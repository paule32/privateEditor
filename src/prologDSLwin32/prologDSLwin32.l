%{
// ----------------------------------------------------------------------------
// File   : prologDSLwin32.l
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"
# include "prologDSLwin32.tab.h"

int count(void);
void* addTextPtr;

int yy_col = 1;
int yy_row = 1;

int        yy_prolog_win32_count(void)        { return yy_row; }
int EXPORT yy_prolog_win32_lex_get_line(void) { return yy_prolog_win32_count(); }
int EXPORT yy_prolog_win32_lex_getlines(void) { return yy_prolog_win32_count(); }

%}

DIGIT       [0-9]
LETTER      [a-zA-Z]+
HEXALETTER  [a-fA-F]+
HEXANUMBER  [0][x](({DIGIT}|{HEXALETTER})+)
NUM         ({DIGIT}+)
ID          ([a-zA-Z]+)|([a-zA-Z0-9_]+)
FILE1       [ a-zA-Z0-9\_\.\\]*
FILENAME    \"(({LETTER}\:\\{FILE1})|({LETTER}\:{FILE1})|({FILE1})*)\"

A           [a|A]
B           [b|B]
C           [c|C]
D           [d|D]
E           [e|E]
F           [f|F]
G           [g|G]
H           [h|H]
I           [i|I]
J           [j|J]
K           [k|K]
L           [l|L]
M           [m|M]
N           [n|N]
O           [o|O]
P           [p|P]
Q           [q|Q]
R           [r|R]
S           [s|S]
T           [t|T]
U           [u|U]
V           [v|V]
W           [w|W]
X           [x|X]
Y           [y|Y]
Z           [z|Z]

%x Comment1

%%

\%.*                      { /* DO NOTHING */ }
\%.*\n                    { /* DO NOTHING */ yy_row++; }

"/*"                      { BEGIN(Comment1); }
<Comment1>\n*             { yy_row += 1;     yy_row++; }
<Comment1>"*"+"/"         { BEGIN(INITIAL);  }

[ \t]*                    { /* empty */ }
[\n|\r\n]                 { yy_col = 1;      yy_row++; }

[0-9]+                    { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }
[0-9]+\.[0-9]+            { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }

[a-zA-Z_]+|[a-zA-Z0-9_]+  {
    // -----------------------------------
    // pattern for: identifier's ...
    // -----------------------------------
    yylval.node_and_value.name = (char*) malloc( strlen( yytext ) + 1); strcpy(
    yylval.node_and_value.name, yytext);
	
    return TOK_ID;
}

["']((\\.|[^"'])*)["'] {
    // -----------------------------------
    // pattern for: "Hello World"
    // pattern for: 'Hello World'
    // -----------------------------------
    yylval.node_and_value.content_str = (char*) malloc( strlen( yytext ) + 1); strcpy(
    yylval.node_and_value.content_str, yytext ) ;

    return TOK_STRING;
}
["']((\\.|[^"'])*)["'][ \t\n\r] {
    // -----------------------------------
    // pattern for: "Hello World"
    // pattern for: 'Hello World'
    // -----------------------------------
    yylval.node_and_value.content_str = (char*) malloc( strlen( yytext ) + 1); strcpy(
    yylval.node_and_value.content_str, yytext ) ;

    return TOK_STRING;
}

":"                     { return ':'; }
";"                     { return ';'; }
"-"                     { return '-'; }
"+"                     { return '+'; }
"*"                     { return '*'; }
"/"                     { return '/'; }
\%                      { return '%'; }

\#                      { return '#'; }

\(                      { return '('; }
\)                      { return ')'; }
\[                      { return '['; }
\]                      { return ']'; }
\{                      { return '{'; }
\}                      { return '}'; }
\,                      { return ','; }
\.                      { return '.'; }

\?                      { return TOK_PRINT_ONE; }

.                       {
    char buffer[200];
    std::sprintf( buffer, "Unrecognized character: %s\n", yytext );
    yyerror(buffer);
}

<<EOF>>                 { return TOK_YYEOF; }
%%

int yywrap(void) { return 1; }

void yyerror(const char* m)
{
    char * buffer = (char *) malloc(1024);
    char * number = (char *) malloc( 255);

    itoa(yy_row,number,10);

    strcpy( buffer, "error in line: ");
    strcat( buffer, number);
    strcat( buffer, ": ");
    strcat( buffer, m);

    ShowParserErrorText( buffer );
}

BOOL EXPORT
yy_dbase_win32_lex_main(
    char* filename,
    char* tempDir )
{
    BOOL   result = FALSE;
    char * buffer;

    // ------------------------------------------
    // try to open file, saved before ...
    // ------------------------------------------
    if (!(yyin = fopen(filename,"r"))) {
        buffer = (char*) malloc(100);

        std::sprintf(buffer, "could not open file: %s", filename);
        ShowParserErrorText(buffer);

        free(buffer);
        return false;
    }

    yy_row = 1;
    yy_col = 1;

    // ------------------------
    // call parser ...
    // ------------------------
    result = yyparse();

    fclose( yyin );
    return result;
}

void EXPORT
yy_prolog_win32_lex_close(void) {
    fclose(yyin);
}

