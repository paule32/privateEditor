%{
// ----------------------------------------------------------------------------
// File   : dBaseDSL.yy
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char* data_code;
extern char* data_text;
extern char* data_data;

#define YYSTYPE int
%}

%token TOK_ID
%token TOK_NUMBER
%token TOK_FLOAT

%type number
%type factor
%type term
%type expr

%token TOK_YYEOF 0

%start program
%%

program
  : /* empty */
  | program expr {
	char buffer[200];
    sprintf(buffer,"--> %f",$2);
    MessageBoxA(0,buffer,"3333",0);
  }
  ;

expr
  : expr '+' term     { $$ = $1 + $3; }
  | expr '-' term     { $$ = $1 - $3; }
  | term              { $$ = $1;      }
  ;
  
term
  : term '*' factor   { $$ = $1 * $3; }
  | term '/' factor   { $$ = $1 / $3; }
  | factor            { $$ = $1;      }
  ;
  
factor
  : number            { $$ =  $1; }
  | '-' number        { $$ = -$2; }
  | '(' expr ')'      { $$ =  $2; }
  ;
  
number
  : TOK_NUMBER        { $$ = $1;  }
  ;
  
%%
