%{
# include "common.h"

char buffer[200];
%}

DIGIT    [0-9]
ID       [a-z][a-z0-9]*

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

%x Comment1 Comment2
%%

"//".*                  { /* DO NOTHING */ }
"//".*\n                { /* DO NOTHING */ ++yylineno; }

"&&".*                  { /* DO NOTHING */ }
"&&".*\n                { /* DO NOTHING */ ++yylineno; }

"**".*                  { /* DO NOTHING */ }
"**".*\n                { /* DO NOTHING */ ++yylineno; }

"/*"                    {             BEGIN(Comment1); }
<Comment1>\n*           { ++yylineno;      }
<Comment1>"*"+"/"       { BEGIN(INITIAL);  }

"(*"                    {             BEGIN(Comment2); }
<Comment2>\n*           { ++yylineno;      }
<Comment2>"*"+")"       { BEGIN(INITIAL);  }

[ \t]*                  { /* empty */ }
[\n|\r\n]               { ++yylineno; }

{A}{N}{D}                     { return TOK_PAS_AND; }
{A}{R}{R}{A}{Y}               { return TOK_PAS_ARRAY; }
{B}{E}{G}{I{N}                { return TOK_PAS_BEGIN; }
{C}{A}{S}{E}                  { return TOK_PAS_CASE; }
{C}{O}{N}{S}{T}               { return TOK_PAS_CONST; }
{D}{I}{V}                     { return TOK_PAS_DIV; }
{D}{O}                        { return TOK_PAS_DO; }
{D}{O}{W}{N}{T{O}             { return TOK_PAS_DOWNTO; }
{E}{L}{S}{E}                  { return TOK_PAS_ELSE; }
{F}{I}{L}{E}                  { return TOK_PAS_FILE; }
{F}{O}{R}                     { return TOK_PAS_FOR; }
{F}{O}{R}{W}{A}{R}{D}         { return TOK_PAS_FORWARD; }
{F}{U}{N}{C}{T}{I}{O}{N}      { return TOK_PAS_FUNCTION; }
{G}{O}{T}{O}                  { return TOK_PAS_GOTO; }
{I}{F}                        { return TOK_PAS_IF; }
{I}{N}                        { return TOK_PAS_IN; }
{L}{A}{B}{E}{L}               { return TOK_PAS_LABEL; }
{M}{O}{D}                     { return TOK_PAS_MOD; }
{N}{I}{L}                     { return TOK_PAS_NIL; }
{N}{O}{T}                     { return TOK_PAS_NOT; }
{O}{F}                        { return TOK_PAS_OF; }
{O}{R}                        { return TOK_PAS_OR; }
{P}{A}{C}{K}{E}{D}            { return TOK_PAS_PACKED; }
{P}{R}{O}{C}{E}{D}{U}{R}{E}   { return TOK_PAS_PROCEDURE; }
{P}{R}{O}{G}{R}{A}{M}         { return TOK_PAS_PROGRAM; }
{R}{E}{C}{O}{R}{D}            { return TOK_PAS_RECORD; }
{R}{E}{P}{E}{A}{T}            { return TOK_PAS_REPEAT; }
{S}{E}{T}                     { return TOK_PAS_SET; }
{T}{H}{E}{N}                  { return TOK_PAS_THEN; }
{T}{O}                        { return TOK_PAS_TO; }
{T}{Y}{P}{E}                  { return TOK_PAS_TYPE; }
{U}{N}{T}{I}{L}               { return TOK_PAS_UNTIL; }
[V}{A}{R}                     { return TOK_PAS_VAR; }
{W}{H}{I}{L}{E}               { return TOK_PAS_WHILE; }
{W}{I}{T}{H}                  { return TOK_PAS_WITH; }

{DIGIT}+  {
  sprintf(buffer, "An integer: %s (%d)\n", yytext,
  atoi( yytext ) );
  MessageBox(0,buffer,"test",0);
}

{DIGIT}+"."{DIGIT}*  {
  sprintf(buffer, "A float: %s (%g)\n", yytext,
  atof( yytext ) );
  MessageBox(0,buffer,"test",0);
}


{ID}              {
  sprintf( buffer, "An identifier: %s\n", yytext );
  MessageBox(0,buffer,"test",0);
}

"+"|"-"|"*"|"/"   {
  sprintf( buffer, "An operator: %s\n", yytext );
  MessageBox(0,buffer,"test",0);
}

.                 {
  sprintf( buffer, "Unrecognized character: %s\n", yytext );
  MessageBox(0,buffer,"test",0);
}

%%

int pascalwrap(void) { return 1; }

void yy_pascal_fatal_error(char* message)
{
  sprintf(buffer,"error: %s",message);
  MessageBox(0,buffer,"zeee",MB_OK);
}

BOOL yy_pascal_lex_main(char* filename)
{
  yyin = fopen(filename,"r");
  if (!yyin) {
    sprintf(buffer, "could not open file: %s", filename);
    MessageBox(0,buffer,"test",0);
    return false;
  }

  yylex();
  fclose(yyin);

  return true;
}

int yy_pascal_lex_getlines(void) { return yylineno-1; }

int  __declspec(dllexport) yy_pascal_lex_getlines(void);
BOOL __declspec(dllexport) yy_pascal_lex_main(char* filename);

