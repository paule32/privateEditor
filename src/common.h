#ifndef COMMON_H
#define COMMON_H

# include <stdio.h>
# include <string.h>
# include <math.h>
# include <io.h>
# include <sys/types.h>

# include <windows.h>

# define YY_NO_UNISTD_H

# define false 0
# define true  1

void pascalerror(char* m);

int  pascalwrap(void);
int  count(void);

void yy_pascal_lex_parser_error(void (*func)(char*));
void yy_pascal_lex_close(void);
int  yy_pascal_lex_get_line(void);
int  yy_pascal_lex_getlines(void);
BOOL yy_pascal_lex_main(char* filename);

void yy_pascal_fatal_error(char* message);

#endif

