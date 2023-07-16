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

struct node {
	char *token;
	char *name;
	int     id;
	float  num;
	
	struct node * prev;
	struct node * next;
	
	struct node * lhs;
	struct node * rhs;
	
	struct node * stmt;
} *root;

// typedef struct node* YYSTYPE;
// # define YYSTYPE_IS_DECLARED

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
// pascal stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT pascalerror(char* m);
extern int   EXPORT pascalwrap(void);
extern int   EXPORT count(void);

extern void  EXPORT yy_pascal_lex_parser_error(void (*func)(char*));
extern void  EXPORT yy_pascal_lex_close(void);
extern int   EXPORT yy_pascal_lex_get_line(void);
extern int   EXPORT yy_pascal_lex_getlines(void);
extern BOOL  EXPORT yy_pascal_lex_main(char*,char*);

extern void  EXPORT yy_pascal_fatal_error(char* message);

// ----------------------------------------------------------------------------
// dbase stuff:
// ----------------------------------------------------------------------------
extern void  EXPORT dbaseerror(char* m);

extern void  EXPORT yy_dbase_lex_parser_error(void (*func)(char*));
extern void  EXPORT yy_dbase_lex_close(void);
extern int   EXPORT yy_dbase_lex_get_line(void);
extern int   EXPORT yy_dbase_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_lex_main(char*,char*);

extern void  EXPORT yy_dbase_fatal_error(char* message);

#ifdef __cplusplus
}
#endif

#endif  // COMMON_H
