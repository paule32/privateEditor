%{
// ----------------------------------------------------------------------------
// File   : dBaseDSL.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include <windows.h>
# include <sys/types.h>

# include "common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char* data_code;
extern char* data_text;
extern char* data_data;

void dbaseerror(char* message);
%}

// ----------------------------------------------------------------------------
// internal parser structure ...
// ----------------------------------------------------------------------------
%union {
  float floatValue;
  char* stringValue;
}

%token TOK_DBASE_ID
%token TOK_DBASE_RANGE
%token TOK_DBASE_NUMBER
%token TOK_DBASE_FLOAT

%type <floatValue>  TOK_DBASE_NUMBER
%type <stringValue> TOK_DBASE_ID

%type <floatValue> number
%type <floatValue> factor
%type <floatValue> term
%type <floatValue> expr

%start program_dbase
%%

program_dbase
  :
  | program_dbase expr {

	char buffer[200];
    sprintf(buffer,"--> %f",$2);
    MessageBox(0,buffer,"3333",0);
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
  : TOK_DBASE_NUMBER  { $$ = $1;  }
  ;
  
%%
