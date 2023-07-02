// ----------------------------------------------------------------------------
// File   : common.h
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
#ifndef COMMON_H
#define COMMON_H

// ----------------------------------------------------------------------------
// standard i/o header proto type stuff:
// ----------------------------------------------------------------------------
# include <stdio.h>
# include <string.h>
# include <math.h>
# include <io.h>
# include <sys/types.h>

// ----------------------------------------------------------------------------
// Microsoft Windows win32api:
// ----------------------------------------------------------------------------
# include <windows.h>

# define YY_NO_UNISTD_H

# define false 0
# define true  1

extern char* dBaseDLLdirectory;

// ----------------------------------------------------------------------------
// parser stuff ...
// ----------------------------------------------------------------------------
extern char* yy_number;
extern char* yy_text;

extern int   yy_col;
extern int   yy_row;

extern void pascalerror(char* m);
extern int  pascalwrap(void);
extern int  count(void);

extern void yy_pascal_lex_parser_error(void (*func)(char*));
extern void yy_pascal_lex_close(void);
extern int  yy_pascal_lex_get_line(void);
extern int  yy_pascal_lex_getlines(void);
extern BOOL yy_pascal_lex_main(char*,char*);

extern void yy_pascal_fatal_error(char* message);

//
extern void dbaseerror(char* m);
extern int  dbasewrap(void);

extern void yy_dbase_lex_parser_error(void (*func)(char*));
extern void yy_dbase_lex_close(void);
extern int  yy_dbase_lex_get_line(void);
extern int  yy_dbase_lex_getlines(void);
extern BOOL yy_dbase_lex_main(char*,char*);

extern void yy_dbase_fatal_error(char* message);
#endif

