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

%union {
	struct {
		float       value;
		char        *name;
		struct node *next;
	} node_and_value;
}

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER

%token <node_and_value> TOK_IF TOK_ELSE TOK_ENDIF

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr
%type  <node_and_value> ident
%type  <node_and_value> stmt if_else_endif

%token TOK_YYEOF 0

%start program

%%

program
	: /* empty */
	| program stmt
	;
	
stmt
	: expr {
		char buffer[200];
		sprintf(buffer,"--> %f",$1.value);
		MessageBoxA(0,buffer,"3333",0);
		
		$$ = $1;
	}
	| ident {
		MessageBoxA(0,$1.name,"0000",0);
		
		$$ = $1;
	}
	| if_else_endif
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
	: TOK_NUMBER
	{
		$$.next  = mknode($1.next,NULL,"const");
		$$.value = $1.value;
	}
	;

ident
	: TOK_ID { $$.next = mknode($1.next,NULL,$1.name); }
	;

if_else_endif
	: TOK_IF expr '=' expr {
	}
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
