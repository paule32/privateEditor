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
	struct node * left ,
	struct node * right,
	struct node * stmt ,
	char        * token
);

%}

%union {
	struct {
		float         value;
		char        * name ;
		struct node * stmt ;
		struct node * next ;
	}   node_and_value;
}

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER

%token <node_and_value> TOK_IF TOK_ELSE TOK_ENDIF
%token <node_and_value> TOK_EQEQ TOK_EQLT TOK_EQGT TOK_GTEQ TOK_LTEQ TOK_LTGT

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
	| program error
	{
		char *buffer = (char*) malloc(320);
		sprintf(buffer,"Error in Grammar at Line: %d", yy_row - 1);
		MessageBoxA(0,buffer,"Attempt",0);
	}
	;
	
stmt
	: /* empty */ { }
	| expr {
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
		$$.next  = mknode($1.next,NULL,NULL,"const");
		$$.value = $1.value;
	}
	;

ident
	: TOK_ID { $$.next = mknode($1.next,NULL,NULL,$1.name); }
	;

if_else_endif
	: TOK_IF expr TOK_EQEQ expr stmt TOK_ENDIF
	{
		if ($2.value == $4.value) {
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqeq");
		}
	}
	| TOK_IF expr TOK_LTEQ expr stmt TOK_ENDIF
	{
		if ($2.value <= $4.value) {
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqlt");
		}
	}
	| TOK_IF expr TOK_GTEQ expr stmt TOK_ENDIF
	{
		if ($2.value >= $4.value) {
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqgt");
		}
	}
	| TOK_IF expr TOK_LTGT expr stmt TOK_ENDIF
	{
		if ($2.value != $4.value) {
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"lteq");
		}
	}
	;

%%

struct node*
mknode(
	struct node *left,
	struct node *right,
	struct node *stmt,
	char *token)
{
	struct node *newnode = (struct node *) malloc( sizeof( struct node )    );
	char        *newstr  = (       char *) malloc( strlen( token       ) + 1);
	
	strcpy(newstr, token);
	
	newnode->lhs   = left;
	newnode->rhs   = right;
	newnode->stmt  = stmt;
	
	newnode->token = newstr;
	return newnode;
}
