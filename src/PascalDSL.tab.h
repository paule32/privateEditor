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

#ifndef YY_PASCAL_PASCALDSL_TAB_H_INCLUDED
# define YY_PASCAL_PASCALDSL_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int pascaldebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    TOK_PAS_AND = 258,             /* TOK_PAS_AND  */
    TOK_PAS_ARRAY = 259,           /* TOK_PAS_ARRAY  */
    TOK_PAS_BEGIN = 260,           /* TOK_PAS_BEGIN  */
    TOK_PAS_CASE = 261,            /* TOK_PAS_CASE  */
    TOK_PAS_CONST = 262,           /* TOK_PAS_CONST  */
    TOK_PAS_DIV = 263,             /* TOK_PAS_DIV  */
    TOK_PAS_DO = 264,              /* TOK_PAS_DO  */
    TOK_PAS_DOWNTO = 265,          /* TOK_PAS_DOWNTO  */
    TOK_PAS_ELSE = 266,            /* TOK_PAS_ELSE  */
    TOK_PAS_FILE = 267,            /* TOK_PAS_FILE  */
    TOK_PAS_FOR = 268,             /* TOK_PAS_FOR  */
    TOK_PAS_FORWARD = 269,         /* TOK_PAS_FORWARD  */
    TOK_PAS_FUNCTION = 270,        /* TOK_PAS_FUNCTION  */
    TOK_PAS_GOTO = 271,            /* TOK_PAS_GOTO  */
    TOK_PAS_IF = 272,              /* TOK_PAS_IF  */
    TOK_PAS_IN = 273,              /* TOK_PAS_IN  */
    TOK_PAS_LABEL = 274,           /* TOK_PAS_LABEL  */
    TOK_PAS_MOD = 275,             /* TOK_PAS_MOD  */
    TOK_PAS_NIL = 276,             /* TOK_PAS_NIL  */
    TOK_PAS_NOT = 277,             /* TOK_PAS_NOT  */
    TOK_PAS_OF = 278,              /* TOK_PAS_OF  */
    TOK_PAS_OR = 279,              /* TOK_PAS_OR  */
    TOK_PAS_PACKED = 280,          /* TOK_PAS_PACKED  */
    TOK_PAS_PROCEDURE = 281,       /* TOK_PAS_PROCEDURE  */
    TOK_PAS_PROGRAM = 282,         /* TOK_PAS_PROGRAM  */
    TOK_PAS_RECORD = 283,          /* TOK_PAS_RECORD  */
    TOK_PAS_REPEAT = 284,          /* TOK_PAS_REPEAT  */
    TOK_PAS_SET = 285,             /* TOK_PAS_SET  */
    TOK_PAS_THEN = 286,            /* TOK_PAS_THEN  */
    TOK_PAS_TO = 287,              /* TOK_PAS_TO  */
    TOK_PAS_TYPE = 288,            /* TOK_PAS_TYPE  */
    TOK_PAS_UNTIL = 289,           /* TOK_PAS_UNTIL  */
    TOK_PAS_VAR = 290,             /* TOK_PAS_VAR  */
    TOK_PAS_WHILE = 291,           /* TOK_PAS_WHILE  */
    TOK_PAS_WITH = 292,            /* TOK_PAS_WITH  */
    TOK_PAS_ID = 293               /* TOK_PAS_ID  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE pascallval;


int pascalparse (void);


#endif /* !YY_PASCAL_PASCALDSL_TAB_H_INCLUDED  */
