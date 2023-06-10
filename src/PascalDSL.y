%{
# include <windows.h>

void pascalerror(char* message);
%}

%token TOK_PAS_AND
%token TOK_PAS_ARRAY
%token TOK_PAS_BEGIN
%token TOK_PAS_CASE
%token TOK_PAS_CONST
%token TOK_PAS_DIV
%token TOK_PAS_DO
%token TOK_PAS_DOWNTO
%token TOK_PAS_ELSE
%token TOK_PAS_END
%token TOK_PAS_FILE
%token TOK_PAS_FOR
%token TOK_PAS_FORWARD
%token TOK_PAS_FUNCTION
%token TOK_PAS_GOTO
%token TOK_PAS_IF
%token TOK_PAS_IN
%token TOK_PAS_LABEL
%token TOK_PAS_LIBRARY
%token TOK_PAS_MOD
%token TOK_PAS_NIL
%token TOK_PAS_NOT
%token TOK_PAS_OF
%token TOK_PAS_OR
%token TOK_PAS_PACKED
%token TOK_PAS_PROCEDURE
%token TOK_PAS_PROGRAM
%token TOK_PAS_RECORD
%token TOK_PAS_REPEAT
%token TOK_PAS_SET
%token TOK_PAS_THEN
%token TOK_PAS_TO
%token TOK_PAS_TYPE
%token TOK_PAS_UNIT
%token TOK_PAS_UNTIL
%token TOK_PAS_VAR
%token TOK_PAS_WHILE
%token TOK_PAS_WITH
%token TOK_PAS_ID

%start translate_unit
%%

translate_unit
  : program ';' begin end '.'
  | unit    ';' begin end '.'
  | library ';' begin end '.'
  ;

begin
  : TOK_PAS_BEGIN
  ;
end
  : TOK_PAS_END
  ;

program
  : TOK_PAS_PROGRAM TOK_PAS_ID
  ;
unit
  : TOK_PAS_UNIT    TOK_PAS_ID
  ;
library
  : TOK_PAS_LIBRARY TOK_PAS_ID
  ;

%%
