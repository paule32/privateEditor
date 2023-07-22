/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_DBASEDSLDOS32_TAB_H_INCLUDED
# define YY_YY_DBASEDSLDOS32_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    TOK_YYEOF = 0,                 /* TOK_YYEOF  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TOK_ID = 258,                  /* TOK_ID  */
    TOK_NUMBER = 259,              /* TOK_NUMBER  */
    TOK_STRING = 260,              /* TOK_STRING  */
    TOK_STRING_BRACE = 261,        /* TOK_STRING_BRACE  */
    TOK_IF = 262,                  /* TOK_IF  */
    TOK_ELSE = 263,                /* TOK_ELSE  */
    TOK_ENDIF = 264,               /* TOK_ENDIF  */
    TOK_EQEQ = 265,                /* TOK_EQEQ  */
    TOK_EQLT = 266,                /* TOK_EQLT  */
    TOK_EQGT = 267,                /* TOK_EQGT  */
    TOK_GTEQ = 268,                /* TOK_GTEQ  */
    TOK_LTEQ = 269,                /* TOK_LTEQ  */
    TOK_LTGT = 270,                /* TOK_LTGT  */
    TOK_ASSIGN = 271,              /* TOK_ASSIGN  */
    TOK_FALSE = 272,               /* TOK_FALSE  */
    TOK_TRUE = 273,                /* TOK_TRUE  */
    TOK_AND = 274,                 /* TOK_AND  */
    TOK_NOT = 275,                 /* TOK_NOT  */
    TOK_OR = 276,                  /* TOK_OR  */
    TOK_PARAMETER = 277,           /* TOK_PARAMETER  */
    TOK_LOCAL = 278,               /* TOK_LOCAL  */
    TOK_PRIVATE = 279,             /* TOK_PRIVATE  */
    TOK_FUNCTION = 280,            /* TOK_FUNCTION  */
    TOK_PROCEDURE = 281,           /* TOK_PROCEDURE  */
    TOK_RETURN = 282,              /* TOK_RETURN  */
    TOK_SET = 283,                 /* TOK_SET  */
    TOK_CLEAR = 284,               /* TOK_CLEAR  */
    TOK_FOR = 285,                 /* TOK_FOR  */
    TOK_TO = 286,                  /* TOK_TO  */
    TOK_ENDFOR = 287,              /* TOK_ENDFOR  */
    TOK_CLASS = 288,               /* TOK_CLASS  */
    TOK_OF = 289,                  /* TOK_OF  */
    TOK_ENDCLASS = 290,            /* TOK_ENDCLASS  */
    TOK_NEW = 291,                 /* TOK_NEW  */
    TOK_WITH = 292,                /* TOK_WITH  */
    TOK_ENDWITH = 293,             /* TOK_ENDWITH  */
    TOK_CUSTOM = 294,              /* TOK_CUSTOM  */
    TOK_DEFINE = 295               /* TOK_DEFINE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 36 "dBaseDSLdos32.y"

	struct {
		float         value;
		char        * name ;
		struct node * node_for;
		struct node * stmt ;
		struct node * next ;
		struct node * prev ;
	}	node_and_value;

#line 115 "dBaseDSLdos32.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_DBASEDSLDOS32_TAB_H_INCLUDED  */
