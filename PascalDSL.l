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

if|then|begin|end|procedure|function  {
  sprintf(buffer, "A keyword: %s\n", yytext );
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

