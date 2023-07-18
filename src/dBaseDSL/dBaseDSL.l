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

extern void yyerror(const char* msg);

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

{E}{L}{S}{E}			{ return TOK_ELSE;  }
{E}{N}{D}{I}{F} 		{ return TOK_ENDIF; }
{I}{F}					{ return TOK_IF;    }

{ID}                    {
	yylval.node_and_value.name = (char*) malloc( strlen( yytext ) + 1); strcpy(
	yylval.node_and_value.name, yytext);
	return TOK_ID;
}
[0-9]+                  { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }
[0-9]+\.[0-9]+          { yylval.node_and_value.value = atof(yytext); return TOK_NUMBER; }

"=="                    { return TOK_EQEQ; }
"!="					{ return TOK_LTGT; }
"=>"                    { return TOK_EQGT; }
"=<"                    { return TOK_EQLT; }
"<="                    { return TOK_LTEQ; }
">="                    { return TOK_GTEQ; }

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

.                       {
    char buffer[200];
    sprintf( buffer, "Unrecognized character: %s\n", yytext );
    yyerror(buffer);
}

<<EOF>>                 { return TOK_YYEOF; }
%%

void yy_dbase_lex_parser_error(void (*func)(char*)) {
  m_addParserErrorText = func;
}

int yywrap(void) { return 1; }

void yyerror(const char* m)
{
  char buffer[320];
  sprintf(buffer,"error: %d: %s", yy_row, m);
  MessageBoxA(0,buffer,"Error",0);
  
//  m_addParserErrorText(bu);
}

BOOL EXPORT
yy_dbase_lex_main(
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
	node_head        = (struct node *) malloc( sizeof( struct node ) );
	node_new         = (struct node *) malloc( sizeof( struct node ) ); // dummy to point head itself
	node_head->token = (       char *) malloc( 8 );
	strcpy( node_head->token, "root" );
	
	// ------------------------
	// root/first record item
	// ------------------------
	node_new->prev = node_head;
	node_new->next = NULL;
	
	// ------------------------
	// call parser ...
	// ------------------------
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
