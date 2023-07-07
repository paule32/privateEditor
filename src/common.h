// ----------------------------------------------------------------------------
// File   : common.h
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
#ifndef COMMON_H     // old fashion
# define COMMON_H 1  // safety guardian
# pragma once        // only one include

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
#else
    //  do nothing and hope for the best?
    # define EXPORT
    # define IMPORT
    # pragma warning Unknown dynamic link import/export semantics.
#endif

// ----------------------------------------------------------------------------
// standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
#ifdef __cplusplus
extern "C" {
#endif

# include <stdio.h>
# include <string.h>
# include <math.h>
# include <io.h>
# include <sys/types.h>

// ----------------------------------------------------------------------------
// Microsoft Windows win32api:
// ----------------------------------------------------------------------------
# include <windows.h>

#ifdef __cplusplus
};
#endif

# define YY_NO_UNISTD_H

int inline false() { return 0; }
int inline true () { return 1; }

extern char* dBaseDLLdirectory;

// ----------------------------------------------------------------------------
// parser stuff ...
// ----------------------------------------------------------------------------
extern char* EXPORT yy_number;
extern char* EXPORT yy_text;

extern int   EXPORT yy_col;
extern int   EXPORT yy_row;

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
extern int   EXPORT dbasewrap(void);

extern void  EXPORT yy_dbase_lex_parser_error(void (*func)(char*));
extern void  EXPORT yy_dbase_lex_close(void);
extern int   EXPORT yy_dbase_lex_get_line(void);
extern int   EXPORT yy_dbase_lex_getlines(void);
extern BOOL  EXPORT yy_dbase_lex_main(char*,char*);

extern void  EXPORT yy_dbase_fatal_error(char* message);

#endif  // COMMON_H

