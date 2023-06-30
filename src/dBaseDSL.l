%{
# include "common.h"
# include "dBaseDSL.tab.h"

extern char buffer[];
typedef void (*addParserErrorText)(char* message);
static addParserErrorText m_addParserErrorText;

int count(void);
void* addTextPtr;

int yy_dbase_count(void) { return yylineno; }
int yy_dbase_lex_get_line(void) { return yy_pascal_count(); }
int yy_dbase_lex_getlines(void) { return yy_pascal_count(); }
%}

DIGIT    [0-9]
ID       [a-zA-Z][a-zA-Z0-9]*

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

%x Comment1 Comment2 Comment3
%%

"//".*                  { yy_dbase_count(); /* DO NOTHING */ }
"//".*\n                { yy_dbase_count(); /* DO NOTHING */ ++yylineno; }

"&&".*                  { yy_dbase_count(); /* DO NOTHING */ }
"&&".*\n                { yy_dbase_count(); /* DO NOTHING */ ++yylineno; }

"**".*                  { yy_dbase_count(); /* DO NOTHING */ }
"**".*\n                { yy_dbase_count(); /* DO NOTHING */ ++yylineno; }

"/*"                    { yy_dbase_count(); BEGIN(Comment1); }
<Comment1>\n*           { yy_dbase_count(); ++yylineno;      }
<Comment1>"*"+"/"       { yy_dbase_count(); BEGIN(INITIAL);  }

"(*"                    { yy_dbase_count(); BEGIN(Comment2); }
<Comment2>\n            { yy_dbase_count(); ++yylineno;      }
<Comment2>"*)"          { yy_dbase_count(); BEGIN(INITIAL);  }

\{                      { yy_dbase_count(); BEGIN(Comment3); }
<Comment3>\n            { yy_dbase_count(); ++yylineno;      }
<Comment3>\}            { yy_dbase_count(); BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { yy_dbase_count(); ++yylineno; }

{DIGIT}+".."+{DIGIT}+ { return TOK_PAS_RANGE; }

{W}{I}{T}{H}                  { yy_dbase_count(); return TOK_DBASE_WITH; }

{ID}                          { return TOK_DBASE_ID;  }

{DIGIT}+           { return TOK_DBASE_NUMBER; }
{DIGIT}+\.{DIGIT}+ { return TOK_DBASE_FLOAT;  }

";"  { return ';'; }
\:   { return ':'; }
\.   { return '.'; }
\,   { return ','; }
\=   { return '='; }
\(   { return '('; }
\)   { return ')'; }
\[   { return '['; }
\]   { return ']'; }

\+   { return '+'; }
\-   { return '-'; }
\*   { return '*'; }
\/   { return '/'; }

.                 {
  sprintf( buffer, "Unrecognized character: %s\n", yytext );
  dbaseerror(buffer);
}

%%

void yy_dbase_lex_parser_error(void (*func)(char*)) {
  m_addParserErrorText = func;
}

int dbasewrap(void) { return 1; }

void dbaseerror(char* m)
{
  char bu[320];
  sprintf(bu,"error: %d: %s",
  yylineno, m);
  m_addParserErrorText(bu);
}

BOOL yy_dbase_lex_main(char* filename)
{
  BOOL result;
  yyin = fopen(filename,"r");
  if (!yyin) {
    sprintf(buffer, "could not open file: %s", filename);
    m_addParserErrorText(buffer);
    return false;
  }

  //yylex();
  result = dbaseparse();
  fclose(yyin);

  return result;
}

void yy_dbase_lex_close(void) {
  fclose(yyin);
}

void __declspec(dllexport) yy_dbase_lex_parser_error(void (*func)(char*));
void __declspec(dllexport) yy_dbase_lex_close(void);

int  __declspec(dllexport) yy_dbase_lex_get_line(void);
int  __declspec(dllexport) yy_dbase_lex_getlines(void);

BOOL __declspec(dllexport) yy_dbase_lex_main(char* filename);
