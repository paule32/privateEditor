// ----------------------------------------------------------------------------
// File   : common.h
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
#ifndef COMMON_H   // old fashion
#define COMMON_H   // safety guardian

// ----------------------------------------------------------------------------
// import/export stuff ...
// ----------------------------------------------------------------------------
#if defined(_MSC_VER)
    //  Microsoft 
    # define EXPORT __declspec(dllexport)
    # define IMPORT __declspec(dllimport)
#elif defined(__GNUC__)
    //  GCC
    # define EXPORT __attribute__((visibility("default")))
    # define IMPORT
#elif defined(__BORLANDC__)
    // C++ Builder
    # define EXPORT __declspec(dllexport)
    # define IMPORT __declspec(dllimport)
#else
    //  do nothing and hope for the best?
    # define EXPORT
    # define IMPORT
    # pragma warning Unknown dynamic link import/export semantics.
#endif

// ----------------------------------------------------------------------------
// standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <signal.h>

// ----------------------------------------------------------------------------
// Microsoft Windows win32api:
// ----------------------------------------------------------------------------
# include <windows.h>

// ----------------------------------------------------------------------------
// Microsoft Windows XP, and up specified stuff:
// ----------------------------------------------------------------------------
struct parser_dll_plugin {
	int      version;
	char   * name;
	char   * path;
} * ptr_parser_dll_plugin;

# define DBASE__PLUGIN_VERSION 20230717  // version on latest date of compile
# define PASCAL_PLUGIN_VERSION 20230717  // ...

# define YY_NO_UNISTD_H

#define false 0
#define true  1

// ----------------------------------------------------------------------------
// token types for the vm:
// ----------------------------------------------------------------------------
enum token_type {
	tt_illegal = -1,
	tt_root,
	
	tt_const_number,	// constant number: 0-9
	tt_const_ident ,    // constant letter array A-Z | a-z
	tt_const_string,	// ident letters in qoute
	
	tt_term,
	
	tt_expr_sub,
	tt_expr_add,
	tt_expr_mul,
	tt_expr_div,
	
	tt_term_sub,
	tt_term_add,
	tt_term_mul,
	tt_term_div,
	
	tt_factor,
	
	tt_factor_number,	// number   factor
	tt_factor_term,     // term
	tt_factor_neg,  	// negative factor
	tt_factor_paren, 	// factor in paren
	
	tt_factor_sub,		// -
	tt_factor_add,		// +
	tt_factor_mul,		// *
	tt_factor_div,		// /
	
	tt_ident_assign,	// :=
	
	tt_for_loop,		// for <ident> := 0 to 9
	
	tt_end_of_list
};

// ----------------------------------------------------------------------------
// main stream structure of the parser tree ...
// ----------------------------------------------------------------------------
typedef struct node {
	char * token;
	char * token_ident;
	enum   token_type  token_id;
		   
	char *name;
	int     id;
	
	float        value;
	
	float     for_from; 	// for loop: from
	float     for_to  ; 	// : to
	
	struct node * prev;
	struct node * next;
} node_t;

extern struct node * node_head;
extern struct node * node_prev;
extern struct node * node_new;

# define ID_TYPE_OP_SUB  1
# define ID_TYPE_OP_ADD  2
# define ID_TYPE_OP_MUL  3
# define ID_TYPE_OP_DIV  4

# define ID_TYPE_CONST 10
# define ID_TYPE_EXPR  20

# define ID_TYPE_PRINT   100

extern BOOL initNode(void);
extern void insertNode(struct node* prev_node, int data);

#ifdef __cplusplus
extern "C" {
#endif

// ----------------------------------------------------------------------------
// parser stuff ...
// ----------------------------------------------------------------------------
extern char* yy_number;
extern char* yy_text;

extern int   yy_col;
extern int   yy_row;
extern int   yylineno;

extern int yyparse(void);

// ----------------------------------------------------------------------------
// pascal dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT pascal_dos32_error(char* m);
extern int   EXPORT pascal_dos32_wrap(void);
extern int   EXPORT pascal_dos32_count(void);

extern void  EXPORT yy_pascal_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_pascal_dos32_lex_close(void);
extern int   EXPORT yy_pascal_dos32_lex_get_line(void);
extern int   EXPORT yy_pascal_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_pascal_dos32_lex_main(char*,char*);

extern void  EXPORT yy_pascal_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// pascal win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_pascal_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_pascal_win32_lex_close(void);
extern int   EXPORT yy_pascal_win32_lex_get_line(void);
extern int   EXPORT yy_pascal_win32_lex_getlines(void);
extern BOOL  EXPORT yy_pascal_win32_lex_main(char*,char*);

extern void  EXPORT yy_pascal_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// dbase dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT dbase_dos32_error(char* m);

extern void  EXPORT yy_dbase_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_dbase_dos32_lex_close(void);
extern int   EXPORT yy_dbase_dos32_lex_get_line(void);
extern int   EXPORT yy_dbase_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_dos32_lex_main(char*,char*);

extern void  EXPORT yy_dbase_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// dbase win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_dbase_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_dbase_win32_lex_close(void);
extern int   EXPORT yy_dbase_win32_lex_get_line(void);
extern int   EXPORT yy_dbase_win32_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_win32_lex_main(char*,char*);

extern void  EXPORT yy_dbase_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// basic dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT basic_dos32_error(char* m);
extern int   EXPORT basic_dos32_wrap(void);
extern int   EXPORT basic_dos32_count(void);

extern void  EXPORT yy_basic_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_basic_dos32_lex_close(void);
extern int   EXPORT yy_basic_dos32_lex_get_line(void);
extern int   EXPORT yy_basic_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_basic_dos32_lex_main(char*,char*);

extern void  EXPORT yy_basic_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// basic win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_basic_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_basic_win32_lex_close(void);
extern int   EXPORT yy_basic_win32_lex_get_line(void);
extern int   EXPORT yy_basic_win32_lex_getlines(void);
extern BOOL  EXPORT yy_basic_win32_lex_main(char*,char*);

extern void  EXPORT yy_basic_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// clisp dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT clisp_dos32_error(char* m);
extern int   EXPORT clisp_dos32_wrap(void);
extern int   EXPORT clisp_dos32_count(void);

extern void  EXPORT yy_clisp_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_clisp_dos32_lex_close(void);
extern int   EXPORT yy_clisp_dos32_lex_get_line(void);
extern int   EXPORT yy_clisp_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_clisp_dos32_lex_main(char*,char*);

extern void  EXPORT yy_clisp_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// clisp win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_clisp_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_clisp_win32_lex_close(void);
extern int   EXPORT yy_clisp_win32_lex_get_line(void);
extern int   EXPORT yy_clisp_win32_lex_getlines(void);
extern BOOL  EXPORT yy_clisp_win32_lex_main(char*,char*);

extern void  EXPORT yy_clisp_win32_fatal_error(char* message);

// ----------------------------------------------------------------------------
// assembler dos32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT assembler_dos32_error(char* m);
extern int   EXPORT assembler_dos32_wrap(void);
extern int   EXPORT assembler_dos32_count(void);

extern void  EXPORT yy_assembler_dos32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_assembler_dos32_lex_close(void);
extern int   EXPORT yy_assembler_dos32_lex_get_line(void);
extern int   EXPORT yy_assembler_dos32_lex_getlines(void);
extern BOOL  EXPORT yy_assembler_dos32_lex_main(char*,char*);

extern void  EXPORT yy_assembler_dos32_fatal_error(char* message);
// ----------------------------------------------------------------------------
// clisp win32 stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT yy_assembler_win32_lex_parser_error(void (*func)(const char*));
extern void  EXPORT yy_assembler_win32_lex_close(void);
extern int   EXPORT yy_assembler_win32_lex_get_line(void);
extern int   EXPORT yy_assembler_win32_lex_getlines(void);
extern BOOL  EXPORT yy_assembler_win32_lex_main(char*,char*);

extern void  EXPORT yy_assembler_win32_fatal_error(char* message);

#ifdef __cplusplus
}
#endif

#endif  // COMMON_H
