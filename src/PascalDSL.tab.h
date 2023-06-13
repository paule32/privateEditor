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
    TOK_PAS_CLASS = 262,           /* TOK_PAS_CLASS  */
    TOK_PAS_CONST = 263,           /* TOK_PAS_CONST  */
    TOK_PAS_DIV = 264,             /* TOK_PAS_DIV  */
    TOK_PAS_DO = 265,              /* TOK_PAS_DO  */
    TOK_PAS_DOWNTO = 266,          /* TOK_PAS_DOWNTO  */
    TOK_PAS_ELSE = 267,            /* TOK_PAS_ELSE  */
    TOK_PAS_END = 268,             /* TOK_PAS_END  */
    TOK_PAS_FILE = 269,            /* TOK_PAS_FILE  */
    TOK_PAS_FOR = 270,             /* TOK_PAS_FOR  */
    TOK_PAS_FORWARD = 271,         /* TOK_PAS_FORWARD  */
    TOK_PAS_FUNCTION = 272,        /* TOK_PAS_FUNCTION  */
    TOK_PAS_GOTO = 273,            /* TOK_PAS_GOTO  */
    TOK_PAS_IF = 274,              /* TOK_PAS_IF  */
    TOK_PAS_IMPLEMENTATION = 275,  /* TOK_PAS_IMPLEMENTATION  */
    TOK_PAS_IN = 276,              /* TOK_PAS_IN  */
    TOK_PAS_INTERFACE = 277,       /* TOK_PAS_INTERFACE  */
    TOK_PAS_LABEL = 278,           /* TOK_PAS_LABEL  */
    TOK_PAS_LIBRARY = 279,         /* TOK_PAS_LIBRARY  */
    TOK_PAS_MOD = 280,             /* TOK_PAS_MOD  */
    TOK_PAS_NIL = 281,             /* TOK_PAS_NIL  */
    TOK_PAS_NOT = 282,             /* TOK_PAS_NOT  */
    TOK_PAS_OF = 283,              /* TOK_PAS_OF  */
    TOK_PAS_OR = 284,              /* TOK_PAS_OR  */
    TOK_PAS_PACKED = 285,          /* TOK_PAS_PACKED  */
    TOK_PAS_PRIVATE = 286,         /* TOK_PAS_PRIVATE  */
    TOK_PAS_PROCEDURE = 287,       /* TOK_PAS_PROCEDURE  */
    TOK_PAS_PROGRAM = 288,         /* TOK_PAS_PROGRAM  */
    TOK_PAS_PROTECTED = 289,       /* TOK_PAS_PROTECTED  */
    TOK_PAS_PUBLIC = 290,          /* TOK_PAS_PUBLIC  */
    TOK_PAS_PUBLISHED = 291,       /* TOK_PAS_PUBLISHED  */
    TOK_PAS_RECORD = 292,          /* TOK_PAS_RECORD  */
    TOK_PAS_REPEAT = 293,          /* TOK_PAS_REPEAT  */
    TOK_PAS_SET = 294,             /* TOK_PAS_SET  */
    TOK_PAS_THEN = 295,            /* TOK_PAS_THEN  */
    TOK_PAS_TO = 296,              /* TOK_PAS_TO  */
    TOK_PAS_TYPE = 297,            /* TOK_PAS_TYPE  */
    TOK_PAS_UNIT = 298,            /* TOK_PAS_UNIT  */
    TOK_PAS_UNTIL = 299,           /* TOK_PAS_UNTIL  */
    TOK_PAS_USES = 300,            /* TOK_PAS_USES  */
    TOK_PAS_VAR = 301,             /* TOK_PAS_VAR  */
    TOK_PAS_WHILE = 302,           /* TOK_PAS_WHILE  */
    TOK_PAS_WITH = 303,            /* TOK_PAS_WITH  */
    TOK_PAS_ID = 304,              /* TOK_PAS_ID  */
    TOK_PAS_RANGE = 305,           /* TOK_PAS_RANGE  */
    TOK_PAS_NUMBER = 306,          /* TOK_PAS_NUMBER  */
    TOK_PAS_FLOAT = 307            /* TOK_PAS_FLOAT  */
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
