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

extern char * yytext;

// ----------------------------------------------------------------------------
// temporary used node symbols/struct:
// ----------------------------------------------------------------------------
struct node * node_head = NULL;
struct node * node_new  = NULL;
struct node * node_prev = NULL;

struct node *
mknode(
	char * fmt,
	struct node * prev ,
	float         value,
	char        * token
);

extern void tree_execute(void);
%}

%union {
	struct {
		float           value;
		char          * name ;
		struct node_t * stmt ;
		struct node_t * next ;
		struct node_t * prev ;
	}	node_and_value;
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
	| program stmt { tree_execute(); }
	| program error
	{
		char *buffer = (char*) malloc(320);
		sprintf(buffer,"Error in Grammar at Line: %d", yy_row - 1);
		MessageBoxA(0,buffer,"Attempt",0);
	}
	;
	
stmt
	: /* empty */ { }
	| expr
	{
		$$      = $1;
		$$.prev = $1.prev;
	}
	| ident {
		MessageBoxA(0,$1.name,"0000",0);
		
		$$      = $1;
		$$.prev = $1.prev;
	}
	| if_else_endif
	;

expr
	: expr '+' term     { $$.value = $1.value + $3.value; }
	| expr '-' term     { $$.value = $1.value - $3.value; }
	| term
	{
		$$      = $1;
		$$.prev = $1.prev;
	}
	;
  
term
	: term '*' factor   { $$.value = $1.value * $3.value; }
	| term '/' factor   { $$.value = $1.value / $3.value; }
	| factor
	{
		$$      = $1;
		$$.prev = $1.prev;
	}
	;
  
factor
	: number
	{
		// --------------------------
		// make a number node to tree
		// --------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$ = $1;
	}
	| '-' number
	{
		// -----------------------------------
		// make a negative number node to tree
		// -----------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "-factor");
		node_new->token_id = tt_factor_neg;

		node_new->value = -$2.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = -$2.value;
	}
	| '(' expr ')'
	{
		// ---------------------------------
		// make a parens number node to tree
		// ---------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );

		strcpy(node_new->token, "( factor )"  );
		node_new->token_id = tt_factor_paren;
		
		node_new->value = $2.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$ = $2;
	}
	;
  
number
	: TOK_NUMBER
	{
		// -------------------------
		// add a number node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		node_new->token_id = tt_const_number;
		strcpy(node_new->token, "const");
		
		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value  = $1.value;
	}
	;

ident
	: TOK_ID
	{
	/*
		$$.next = mknode(
			$1.next,	// left
			NULL,		// right
			NULL,		// stmt
			$1.name);

		$$.prev = $1.prev;
	*/
	}
	;

if_else_endif
	: TOK_IF expr TOK_EQEQ expr stmt TOK_ENDIF
	{
		if ($2.value == $4.value) {
		/*
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqeq");
			$5.prev = $$.next;
		*/
		}
	}
	| TOK_IF expr TOK_LTEQ expr stmt TOK_ENDIF
	{
		if ($2.value <= $4.value) {
		/*
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqlt");
			$5.prev = $$.next;
		*/
		}
	}
	| TOK_IF expr TOK_GTEQ expr stmt TOK_ENDIF
	{
		if ($2.value >= $4.value) {
		/*
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"eqgt");
			$5.prev = $$.next;
		*/
		}
	}
	| TOK_IF expr TOK_LTGT expr stmt TOK_ENDIF
	{
		if ($2.value != $4.value) {
		/*
			$5.next = mknode(
				$2.next,
				$4.next,
				$5.next,
				"lteq");
			$5.prev = $$.next;
		*/
		}
	}
	;

%%

// ----------------------------------------------------------------------------
// make/add a node to the parse tree ...
// ----------------------------------------------------------------------------
struct node *
mknode(
	char *fmt,
	struct node * prev,
	float         value,
	char        * token)
{
	struct node *
	newnode = (struct node *) malloc( sizeof( struct node )    );
	newnode->token = (char *) malloc( strlen( token       ) + 1);
	newnode->prev  =  prev;
	newnode->next  =  NULL;
	
	strcpy(newnode->token, token);
	return newnode;
}

// ----------------------------------------------------------------------------
// traverse throug the created parse tree from behind the scenes ...
// ----------------------------------------------------------------------------
void
tree_execute(void)
{
	char        * buffer;
	struct node * ptr = node_new;
	
	buffer = (char *) malloc(255);
	node_prev = ptr;
	
	// ---------------------------------------
	// traverse the parse tree from behind ...
	// ---------------------------------------
	while (ptr != NULL) {
		if (node_prev != NULL) {
			switch (node_prev->token_id)
			{
				case tt_const_number:
					sprintf(buffer,"fetch number: %f",
					ptr->value);
				break;
				case tt_factor_neg:
					sprintf(buffer,"negate number factor: %f",
					ptr->value);
				break;
				case tt_factor_paren:
					sprintf(buffer,"parens number factor: ( %f )",
					ptr->value);
				break;
				case tt_factor:
					sprintf(buffer,"simple factor number");
				break;
				default:
					sprintf(buffer,"error on fetch type");
				break;
			}	MessageBoxA(0,buffer,"DebugInfo",0);
		}
		node_prev = ptr->prev;
		ptr       = ptr->prev;
	}
	
	free(buffer);
}
