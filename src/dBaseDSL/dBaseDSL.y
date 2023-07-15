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

// # define YYSTYPE int

extern char* yytext;

struct node*
mknode(
	struct node *left,
	struct node *right,
	char *token
);

%}

%token TOK_ID
%token <node_and_value> TOK_NUMBER

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term
%type  <node_and_value> expr

%token TOK_YYEOF 0

%start program

%union {
	struct {
		float       value;
		struct node *next;
	} node_and_value;
}

%%

program
	: /* empty */
	| program expr {
		char buffer[200];
		sprintf(buffer,"--> %f",$2.value);
		MessageBoxA(0,buffer,"3333",0);
	}
	;

expr
	: expr '+' term     { $$.value = $1.value + $3.value; }
	| expr '-' term     { $$.value = $1.value - $3.value; }
	| term              { $$       = $1;                  }
	;
  
term
	: term '*' factor   { $$.value = $1.value * $3.value; }
	| term '/' factor   { $$.value = $1.value / $3.value; }
	| factor            { $$       = $1;                  }
	;
  
factor
	: number            { $$       =  $1;       }
	| '-' number        { $$.value = -$2.value; }
	| '(' expr ')'      { $$       =  $2;       }
	;
  
number
	: TOK_NUMBER        { $$.value = atof(yytext);  }
	;
  
%%

struct node*
mknode(
	struct node *left,
	struct node *right,
	char *token)
{
	struct node *newnode = (struct node *) malloc( sizeof( struct node )    );
	char        *newstr  = (       char *) malloc( strlen( token       ) + 1);
	
	strcpy(newstr, token);
	
	newnode->lhs   = left;
	newnode->rhs   = right;
	newnode->token = newstr;
	
	return newnode;
}
