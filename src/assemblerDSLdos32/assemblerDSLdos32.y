%{
// ----------------------------------------------------------------------------
// File   : assemblerDSLdos32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

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
%token <node_and_value> TOK_NUMBER TOK_STRING TOK_LABEL

%token <node_and_value> TOK_EQEQ TOK_EQLT TOK_EQGT TOK_GTEQ TOK_LTEQ TOK_LTGT
%token <node_and_value> TOK_ASSIGN TOK_FALSE TOK_TRUE TOK_AND TOK_NOT TOK_OR

%token <node_and_value> TOK_AAA
%token <node_and_value> TOK_ADD
%token <node_and_value> TOK_MOV
%token <node_and_value> TOK_POP
%token <node_and_value> TOK_PUSH

%token <node_and_value> TOK_EAX
%token <node_and_value> TOK_EBP
%token <node_and_value> TOK_EBX
%token <node_and_value> TOK_ECX
%token <node_and_value> TOK_EDI
%token <node_and_value> TOK_EDX
%token <node_and_value> TOK_EIP
%token <node_and_value> TOK_ESI
%token <node_and_value> TOK_ESP

%token <node_and_value> TOK_AX
%token <node_and_value> TOK_BP
%token <node_and_value> TOK_BX
%token <node_and_value> TOK_CX
%token <node_and_value> TOK_DX

%token <node_and_value> TOK_AH
%token <node_and_value> TOK_BH
%token <node_and_value> TOK_CH
%token <node_and_value> TOK_DH

%token <node_and_value> TOK_AL
%token <node_and_value> TOK_BL
%token <node_and_value> TOK_CL
%token <node_and_value> TOK_DL

%token <node_and_value> TOK_IP
%token <node_and_value> TOK_SP

%token <node_and_value> TOK_DI
%token <node_and_value> TOK_SI

%token <node_and_value> TOK_DWORD
%token <node_and_value> TOK_WORD
%token <node_and_value> TOK_BYTE
%token <node_and_value> TOK_PTR

%type  <node_and_value> number
%type  <node_and_value> factor
%type  <node_and_value> term

%type  <node_and_value> expr
%type  <node_and_value> ident
%type  <node_and_value> stmt

%type  <node_and_value> reg8L reg8H reg16 reg32

%token TOK_YYEOF 0

%start program

%%

program
	:	/* empty */ { }
	|	program stmt  { }
	|	program error {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
	;

stmt
	:	/* empty */ { }
	|	TOK_AAA reg32 ',' reg32 stmt
	|	TOK_AAA reg32 ',' reg16 stmt
	|	TOK_AAA reg32 ',' reg8H stmt
	|	TOK_AAA reg32 ',' reg8L stmt
	|	TOK_AAA reg16 ',' reg16 stmt
	|	TOK_AAA reg16 ',' reg8H stmt
	|	TOK_AAA reg16 ',' reg8L stmt
	|	TOK_AAA reg8H ',' reg8H stmt
	|	TOK_AAA reg8L ',' reg8L stmt {
	}
	|	TOK_AAA reg8L ',' expr  stmt
	|	TOK_AAA reg8L ',' ident stmt {
	}
	|	TOK_AAA reg8H ',' expr  stmt
	|	TOK_AAA reg8H ',' ident stmt {
	}
	|	TOK_AAA reg16 ',' expr  stmt
	|	TOK_AAA reg16 ',' ident stmt {
	}
	|	TOK_AAA reg32 ',' expr  stmt
	|	TOK_AAA reg32 ',' ident stmt {
	
	}
	|	TOK_MOV reg ',' reg stmt
	|	TOK_MOV reg ',' mem stmt
	|	TOK_MOV mem ',' reg stmt
	|	TOK_MOV reg ',' con stmt
	|	TOK_MOV mem ',' con stmt {
	}
	|	TOK_POP reg
	|	TOK_POP mem  {
	}
	|	TOK_PUSH reg
	|	TOK_PUSH mem
	|	TOK_PUSH con {
	}
	;

con
	:	expr
	|	ident
	;
	
reg
	:	reg8L
	|	reg8H
	|	reg16
	|	reg32
	;

mem
	:	'[' reg  ']'
	|	'[' expr ']' {
	}
	|	TOK_DWORD TOK_PTR '[' regSeq ']'
	|	TOK_DWORD         '[' regSeq ']' {
	}
	|	TOK_WORD  TOK_PTR '[' regSeq ']'
	|	TOK_WORD          '[' regSeq ']' {
	}
	|	TOK_BYTE  TOK_PTR '[' regSeq ']'
	|	TOK_BYTE          '[' regSeq ']' {
	}
	;

regSeq
	:	reg
	|	expr
	|	regSeq '+' regSeq
	;

reg8L
	:	TOK_AL
	|	TOK_BL
	|	TOK_CL
	|	TOK_DL
	;

reg8H
	:	TOK_AH
	|	TOK_BH
	|	TOK_CH
	|	TOK_DH
	;

reg16
	:	TOK_AX
	|	TOK_BX
	|	TOK_CX
	|	TOK_DX
	;

reg32
	:	TOK_EAX
	|	TOK_EBX
	|	TOK_ECX
	|	TOK_EDX
	;

expr
	:	expr '-' term
	|	expr '+' term
	|	term
	;

term
	:	term '*' factor
	|	term '/' factor
	|	factor
	;

factor
	:	number
	|	'-' number   { }
	|	'(' expr ')' { }
	;

number
	:	TOK_NUMBER
	|	ident
	;

ident
	:	TOK_ID
	;

%%
