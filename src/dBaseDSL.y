%{
# include <windows.h>

void dbaseerror(char* message);
%}

%token TOK_DBASE_ID
%token TOK_DBASE_RANGE
%token TOK_DBASE_NUMBER
%token TOK_DBASE_FLOAT

%start translate_unit
%%

translate_unit
  :
  ;

%%
