%{
// ----------------------------------------------------------------------------
// File   : dbaseDSL.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "common.h"
# include "dBaseDSL.tab.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------

typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText;

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int yy_dbase_count(void)        { return yy_row; }
int yy_dbase_lex_get_line(void) { return yy_dbase_count(); }
int yy_dbase_lex_getlines(void) { return yy_dbase_count(); }

void yyerror(const char* msg)
{
    fprintf(stderr,"error: %s\n",msg);
    exit(1);
}

%}

DIGIT       [0-9]
LETTER      [a-zA-Z]
HEXALETTER  [a-fA-F]
HEXANUMBER  [0][x](({DIGIT}|{HEXALETTER})+)
NUM         ({DIGIT}+)
ID          [a-z_]+[a-zA-Z0-9_]*
FILE1       [ a-zA-Z0-9\_\.\\]*
FILENAME    \"(({LETTER}\:\\{FILE1})|({LETTER}\:{FILE1})|({FILE1})*)\"
STRING      ("([^"]|"")*")

A [a|A]
B [b|B]
C [c|C]
D [d|D]
E [e|E]
F [f|F]
G [g|G]
H [h|H]
I [i|I]
J [j|J]
K [k|K]
L [l|L]
M [m|M]
N [n|N]
O [o|O]
P [p|P]
Q [q|Q]
R [r|R]
S [s|S]
T [t|T]
U [u|U]
V [v|V]
W [w|W]
X [x|X]
Y [y|Y]
Z [z|Z]

%x Comment1

%%

"//".*                  { /* DO NOTHING */ }
"//".*\n                { /* DO NOTHING */ yy_row++; }

"&&".*                  { /* DO NOTHING */ }
"&&".*\n                { /* DO NOTHING */ yy_row++; }

"**".*                  { /* DO NOTHING */ }
"**".*\n                { /* DO NOTHING */ yy_row++; }

"/*"                    { BEGIN(Comment1); }
<Comment1>\n*           { yy_row += 1;     yy_row++; }
<Comment1>"*"+"/"       { BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_col = 1;      yy_row++; }

{ID}                    { return TOK_ID    ; }
[0-9]+                  { return TOK_NUMBER; }
[0-9]+\.[0-9]+          { return TOK_NUMBER; }

":"                     { return ':'; }
";"                     { return ';'; }
"-"                     { return '-'; }
"+"                     { return '+'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
\%                      { return '%'; }

\(                      { return '('; }
\)                      { return ')'; }
\[                      { return '['; }
\]                      { return ']'; }
\{                      { return '{'; }
\}                      { return '}'; }
\.                      { return '.'; }

<<EOF>>                 { return TOK_YYEOF; }
.                       {
    char buffer[200];
    sprintf( buffer, "Unrecognized character: %s\n", yytext );
    dbaseerror(buffer);
  }

%%

void yy_dbase_lex_parser_error(void (*func)(char*)) {
  m_addParserErrorText = func;
}

int yywrap(void) { return 1; }

void dbaseerror(char* m)
{
  char bu[320];
  sprintf(bu,"error: %d: %s",
  yy_row, m);
  m_addParserErrorText(bu);
}

BOOL EXPORT
yy_dbase_lex_main(
    char* filename,
    char* tempDir )
{
    BOOL  result;
    char* buffer;
  
    yyin = fopen(filename,"r");
    if (!yyin) {
        buffer = (char*) malloc(100);
    
        sprintf(buffer, "could not open file: %s", filename);
        m_addParserErrorText(buffer);
    
        free(buffer);
        return false;
    }

    yy_row = 1;
    yy_col = 1;

    // ------------------------------------------
    // start the race run ...
    // ------------------------------------------
    result = yyparse();

    fclose(yyin);
    return result;
}

void yy_dbase_lex_close(void) {
    fclose(yyin);
}

void EXPORT yy_dbase_lex_parser_error(void (*func)(char*));
void EXPORT yy_dbase_lex_close(void);

int  EXPORT yy_dbase_lex_get_line(void);
int  EXPORT yy_dbase_lex_getlines(void);

BOOL EXPORT yy_dbase_lex_main(char*, char*);
