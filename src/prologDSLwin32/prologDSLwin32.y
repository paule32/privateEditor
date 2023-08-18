%{
// ----------------------------------------------------------------------------
// File   : PrologDSLwun32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char * yytext;

extern void add_node_string( int, char* );
extern void add_node_print ( int, int );

extern void display_list  ( );
extern int  yylex();

// ----------------------------------------------------------------------------
// this variable is important ! - it counts the commands, and is in relation
// to, and with other command's...
// ----------------------------------------------------------------------------
static int command_reference_counter = 1;

// ----------------------------------------------------------------------------
// the following "export" function is used in Delphi, to call the tree run ...
// ----------------------------------------------------------------------------
void EXPORT
yy_dbase_win32_run_code(void) {
    display_list();
}
%}

%union {
    struct {
        float         value;
        char        * name ;
        char        * content_str;
        struct node * node_for;
        struct node * node_class;
        struct node * stmt ;
        struct node * next ;
        struct node * prev ;
    }	node_and_value;
};

%token <node_and_value> TOK_ID
%token <node_and_value> TOK_NUMBER TOK_STRING

%token <node_and_value> TOK_PRINT_ONE
%token <node_and_value> TOK_PRINT_TWO

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr ident stmt
%type  <node_and_value> ident_string

%token TOK_YYEOF 0

%start program

%%

program
    :   /* empty */   { }
    |   program stmt  { }
    |   program error { yyerror( "Error in Grammar" ); }
    ;

stmt
    :	/* empty */ { }
    ;

ident_string
    :   TOK_STRING
    {
        $$.content_str = strdup( $1.content_str );
    }
    |   ident_string '+' ident_string
    {
        AnsiString str1 = $1.content_str;
        AnsiString str2 = $3.content_str;
        
        AnsiString str3 = str1 + str2;
        
        $$.content_str = strdup( str3.c_str() );
    }
    | expr
    ;

expr
    : expr '-' term { $$.value = $1.value - $3.value; }
    | expr '+' term { $$.value = $1.value + $3.value; }
    |          term { $$.value = $1.value;  }
    ;
  
term
    : term '*' factor { $$.value = $1.value * $3.value; }
    | term '/' factor { $$.value = $1.value / $3.value; }
    |          factor { $$ = $1; }
    ;
  
factor
    : number       { $$ = $1; }
    | '-' number   { $$.value = -$2.value; }
    | '(' expr ')' { $$ = $2; }
    ;
  
number
    : TOK_NUMBER   { $$.value = $1.value;  }
    ;

ident
    : TOK_ID
    ;

%%

void
add_node_print( int command, int flag )
{
    if (flag == 1) {
        Node * nod = new Node( tt_print_one );
        nod->SetTokenTrace( command );

        rootNodes.push_back( nod );
    }   else {
        Node * nod = new Node( tt_print_two );
        nod->SetTokenTrace( command );

        rootNodes.push_back( nod );
    }
}

void
add_node_string( int command, char *str )
{
    Node * nod = new Node( str );

    nod->SetTokenType ( tt_const_string );
    nod->SetTokenTrace( command );
    nod->SetData( str );

    rootNodes.push_back( nod );
}
