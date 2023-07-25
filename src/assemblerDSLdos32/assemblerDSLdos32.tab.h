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

#ifndef YY_YY_ASSEMBLERDSLDOS32_TAB_H_INCLUDED
# define YY_YY_ASSEMBLERDSLDOS32_TAB_H_INCLUDED
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
    TOK_LABEL = 261,               /* TOK_LABEL  */
    TOK_EQEQ = 262,                /* TOK_EQEQ  */
    TOK_EQLT = 263,                /* TOK_EQLT  */
    TOK_EQGT = 264,                /* TOK_EQGT  */
    TOK_GTEQ = 265,                /* TOK_GTEQ  */
    TOK_LTEQ = 266,                /* TOK_LTEQ  */
    TOK_LTGT = 267,                /* TOK_LTGT  */
    TOK_ASSIGN = 268,              /* TOK_ASSIGN  */
    TOK_FALSE = 269,               /* TOK_FALSE  */
    TOK_TRUE = 270,                /* TOK_TRUE  */
    TOK_AND = 271,                 /* TOK_AND  */
    TOK_NOT = 272,                 /* TOK_NOT  */
    TOK_OR = 273,                  /* TOK_OR  */
    TOK_XOR = 274,                 /* TOK_XOR  */
    TOK_NEG = 275,                 /* TOK_NEG  */
    TOK_SHL = 276,                 /* TOK_SHL  */
    TOK_SHR = 277,                 /* TOK_SHR  */
    TOK_JE = 278,                  /* TOK_JE  */
    TOK_JNE = 279,                 /* TOK_JNE  */
    TOK_JZ = 280,                  /* TOK_JZ  */
    TOK_JG = 281,                  /* TOK_JG  */
    TOK_JGE = 282,                 /* TOK_JGE  */
    TOK_JL = 283,                  /* TOK_JL  */
    TOK_JLE = 284,                 /* TOK_JLE  */
    TOK_AAA = 285,                 /* TOK_AAA  */
    TOK_ADD = 286,                 /* TOK_ADD  */
    TOK_DEC = 287,                 /* TOK_DEC  */
    TOK_INC = 288,                 /* TOK_INC  */
    TOK_IMUL = 289,                /* TOK_IMUL  */
    TOK_IDIV = 290,                /* TOK_IDIV  */
    TOK_LEA = 291,                 /* TOK_LEA  */
    TOK_MOV = 292,                 /* TOK_MOV  */
    TOK_POP = 293,                 /* TOK_POP  */
    TOK_PUSH = 294,                /* TOK_PUSH  */
    TOK_RET = 295,                 /* TOK_RET  */
    TOK_SUB = 296,                 /* TOK_SUB  */
    TOK_EAX = 297,                 /* TOK_EAX  */
    TOK_EBP = 298,                 /* TOK_EBP  */
    TOK_EBX = 299,                 /* TOK_EBX  */
    TOK_ECX = 300,                 /* TOK_ECX  */
    TOK_EDI = 301,                 /* TOK_EDI  */
    TOK_EDX = 302,                 /* TOK_EDX  */
    TOK_EIP = 303,                 /* TOK_EIP  */
    TOK_ESI = 304,                 /* TOK_ESI  */
    TOK_ESP = 305,                 /* TOK_ESP  */
    TOK_AX = 306,                  /* TOK_AX  */
    TOK_BP = 307,                  /* TOK_BP  */
    TOK_BX = 308,                  /* TOK_BX  */
    TOK_CX = 309,                  /* TOK_CX  */
    TOK_DX = 310,                  /* TOK_DX  */
    TOK_AH = 311,                  /* TOK_AH  */
    TOK_BH = 312,                  /* TOK_BH  */
    TOK_CH = 313,                  /* TOK_CH  */
    TOK_DH = 314,                  /* TOK_DH  */
    TOK_AL = 315,                  /* TOK_AL  */
    TOK_BL = 316,                  /* TOK_BL  */
    TOK_CL = 317,                  /* TOK_CL  */
    TOK_DL = 318,                  /* TOK_DL  */
    TOK_IP = 319,                  /* TOK_IP  */
    TOK_SP = 320,                  /* TOK_SP  */
    TOK_DI = 321,                  /* TOK_DI  */
    TOK_SI = 322,                  /* TOK_SI  */
    TOK_DWORD = 323,               /* TOK_DWORD  */
    TOK_WORD = 324,                /* TOK_WORD  */
    TOK_BYTE = 325,                /* TOK_BYTE  */
    TOK_PTR = 326                  /* TOK_PTR  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 36 "assemblerDSLdos32.y"

	struct {
		float         value;
		char        * name ;
		struct node * node_for;
		struct node * stmt ;
		struct node * next ;
		struct node * prev ;
	}	node_and_value;

#line 146 "assemblerDSLdos32.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_ASSEMBLERDSLDOS32_TAB_H_INCLUDED  */
