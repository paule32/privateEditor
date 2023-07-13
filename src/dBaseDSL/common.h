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

#ifdef __cplusplus
extern "C" {
#endif

extern int yyparse();

// ----------------------------------------------------------------------------
// standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
# include <stdio.h>
# include <string.h>
# include <io.h>
# include <sys/types.h>

// ----------------------------------------------------------------------------
// Microsoft Windows win32api:
// ----------------------------------------------------------------------------
# include <windows.h>

# define YY_NO_UNISTD_H

#define false 0
#define true  1

extern char* dBaseDLLdirectory;

// ----------------------------------------------------------------------------
// parser stuff ...
// ----------------------------------------------------------------------------
extern char* yy_number;
extern char* yy_text;

extern int   yy_col;
extern int   yy_row;

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
