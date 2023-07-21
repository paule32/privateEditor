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
		float         value;
		char        * name ;
		struct node * node_for;
		struct node * stmt ;
		struct node * next ;
		struct node * prev ;
	}	node_and_value;
}

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER

%token <node_and_value> TOK_IF TOK_ELSE TOK_ENDIF
%token <node_and_value> TOK_EQEQ TOK_EQLT TOK_EQGT TOK_GTEQ TOK_LTEQ TOK_LTGT
%token <node_and_value> TOK_ASSIGN

%token <node_and_value> TOK_FUNCTION TOK_PROCEDURE TOK_RETURN TOK_SET TOK_CLEAR
%token <node_and_value> TOK_FOR TOK_TO TOK_ENDFOR
%token <node_and_value> TOK_CLASS TOK_OF TOK_ENDCLASS TOK_NEW
%token <node_and_value> TOK_WITH TOK_ENDWITH

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr
%type  <node_and_value> ident
%type  <node_and_value> stmt if_else_endif ident_object

%token TOK_YYEOF 0

%start program

%%

program
	: /* empty */ { }
	| program stmt { }
	| program error {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
	;
	
stmt
	: /* empty */ { }
	| ident_object TOK_ASSIGN expr
	{
		// -----------------------------
		// make a ident node to tree
		// -----------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );
		node_new->token = (char *) malloc( strlen( $1.name     ) + 1);
		
		strcpy(node_new->token, $1.name   );
		node_new->token_id = tt_const_ident;

		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;


		// ------------------------------
		// make a ident expr node to tree
		// ------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "assign");
		node_new->token_id = tt_ident_assign;

		node_new->value = $3.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	|	TOK_FOR ident '=' expr TOK_TO expr {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forloop");

		$1.node_for = (struct node *) malloc( sizeof( struct node ) );
		$1.node_for->token_id = tt_for_loop;
		$1.node_for->for_from = $4.value;
		$1.node_for->for_to   = $6.value;

		node_new->prev = $1.node_for;
		node_new->next = NULL;
		node_prev      = node_new;

	}	stmt TOK_ENDFOR {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forend");
		node_new->token_id = $1.node_for->token_id;
		
		node_new->prev = $1.node_for;
		node_new->next = NULL;
		node_prev      = node_new;
	}
	| TOK_CLASS     ident TOK_OF ident stmt TOK_ENDCLASS stmt { MessageBoxA(0,"classss","ooooo",0);
	}
	| TOK_PROCEDURE ident              stmt TOK_RETURN   stmt
	| TOK_FUNCTION  ident              stmt TOK_RETURN   stmt {
	}
	| TOK_WITH '('  ident_object ')'   stmt TOK_ENDWITH  stmt
	| TOK_WITH      ident_object       stmt TOK_ENDWITH  stmt {
	}
	| ident_object  TOK_ASSIGN TOK_NEW ident_object '(' ident_object ')' stmt
	| ident_object  TOK_ASSIGN TOK_NEW ident_object '('              ')' stmt {
	}
	| if_else_endif
	;

ident_object
	: TOK_ID
	| ident_object '.' ident_object
	;
	
expr
	: expr
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_sub;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'-' term
	{
		// ----------------------------
		// make a sub term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_sub;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value - $4.value;
	}
	| expr
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_add;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'+' term
	{
		// ----------------------------
		// make a add term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_add;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value + $4.value;
	}
	| term
	{
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value;
	}
	;
  
term
	: term
	{
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_mul;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'*' factor
	{
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_term_mul;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value * $4.value;
	}
	| term
	{
		// ----------------------------
		// make a div node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term" );
		node_new->token_id = tt_term_div;

		node_new->value = $1.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
	'/' factor
	{
		// ----------------------------
		// make a div term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor_div;

		node_new->value = $4.value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		$$.value = $1.value / $4.value;
	}
	| factor
	{
		// --------------------------
		// make a factor node to tree
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
		node_new->token_id = tt_factor_number;

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
		
		strcpy(node_new->token, "factor" );
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

		strcpy(node_new->token, "factor"  );
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
		// -------------------------
		// add a ident node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );

		node_new->token = (char *) malloc( strlen( $1.name     ) + 1);
		$$.name         = (char *) malloc( strlen( $1.name     ) + 1);
		strcpy($$.name, $1.name );

		node_new->token_id = tt_const_ident;
		strcpy(node_new->token, $1.name );
		
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
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
				case tt_const_ident:
					sprintf(buffer,"detected ident: %s",
					ptr->token);
				break;
				
				case tt_const_number:
					sprintf(buffer,"fetch number: %f",
					ptr->value);
				break;
				
				case tt_factor_neg:
					sprintf(buffer,"negate number factor: %f",
					ptr->value);
				break;
				
				case tt_factor_term:
					sprintf(buffer,"term factor:  %f ",
					ptr->value);
				break;
				
				case tt_factor_paren:
					sprintf(buffer,"parens number factor: ( %f )",
					ptr->value);
				break;
				
				case tt_factor_number:
					sprintf(buffer,"simple factor number");
				break;
				
				case tt_term:    break;
				case tt_factor:  break;
				
				case tt_expr_sub: sprintf(buffer, "expr sub" ); break;
				case tt_expr_add: sprintf(buffer, "expr add" ); break;
				case tt_expr_mul: sprintf(buffer, "expr mul" ); break;
				case tt_expr_div: sprintf(buffer, "expr div" ); break;
				
				case tt_term_sub: sprintf(buffer, "term sub" ); break;
				case tt_term_add: sprintf(buffer, "term add" ); break;
				case tt_term_mul: sprintf(buffer, "term mul" ); break;
				case tt_term_div: sprintf(buffer, "term div" ); break;

				case tt_factor_sub: sprintf(buffer, "factor sub" ); break;
				case tt_factor_add: sprintf(buffer, "factor add" ); break;
				case tt_factor_mul: sprintf(buffer, "factor mul" ); break;
				case tt_factor_div: sprintf(buffer, "factor div" ); break;
				
				case tt_ident_assign:
					sprintf(buffer,"assign to: '%s' := %f",
						ptr->token,
						ptr->value
					);
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
