/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "dBaseDSLwin32.y"

// ----------------------------------------------------------------------------
// File   : dBaseDSLwun32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"
# include <windows.h>

# include "FormTemplate.h"

// ----------------------------------------------------------------------------
// parser variables and constants:
// ----------------------------------------------------------------------------
extern char* data_code;
extern char* data_text;
extern char* data_data;

extern char * yytext;

// ----------------------------------------------------------------------------
// temporary used node symbols/struct:
// ----------------------------------------------------------------------------
struct node * node_head = NULL;
struct node * node_new  = NULL;
struct node * node_prev = NULL;

struct node *
mknode(
	char * fmt,
	struct node * prev ,
	float         value,
	char        * token
);

extern void tree_execute(void);

extern void add_node_new_class_ref( char*, char* );
extern void add_node_new_class_obj( char*, char* );

extern void display_list      ( );
extern int  yylex();

void EXPORT
yy_dbase_win32_run_code(void) {
    display_list();
}

#line 120 "dBaseDSLwin32.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "dBaseDSLwin32.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* TOK_YYEOF  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_TOK_ID = 3,                     /* TOK_ID  */
  YYSYMBOL_TOK_NUMBER = 4,                 /* TOK_NUMBER  */
  YYSYMBOL_TOK_STRING = 5,                 /* TOK_STRING  */
  YYSYMBOL_TOK_STRING_BRACE = 6,           /* TOK_STRING_BRACE  */
  YYSYMBOL_TOK_IF = 7,                     /* TOK_IF  */
  YYSYMBOL_TOK_ELSE = 8,                   /* TOK_ELSE  */
  YYSYMBOL_TOK_ENDIF = 9,                  /* TOK_ENDIF  */
  YYSYMBOL_TOK_EQEQ = 10,                  /* TOK_EQEQ  */
  YYSYMBOL_TOK_EQLT = 11,                  /* TOK_EQLT  */
  YYSYMBOL_TOK_EQGT = 12,                  /* TOK_EQGT  */
  YYSYMBOL_TOK_GTEQ = 13,                  /* TOK_GTEQ  */
  YYSYMBOL_TOK_LTEQ = 14,                  /* TOK_LTEQ  */
  YYSYMBOL_TOK_LTGT = 15,                  /* TOK_LTGT  */
  YYSYMBOL_TOK_ASSIGN = 16,                /* TOK_ASSIGN  */
  YYSYMBOL_TOK_FALSE = 17,                 /* TOK_FALSE  */
  YYSYMBOL_TOK_TRUE = 18,                  /* TOK_TRUE  */
  YYSYMBOL_TOK_AND = 19,                   /* TOK_AND  */
  YYSYMBOL_TOK_NOT = 20,                   /* TOK_NOT  */
  YYSYMBOL_TOK_OR = 21,                    /* TOK_OR  */
  YYSYMBOL_TOK_PARAMETER = 22,             /* TOK_PARAMETER  */
  YYSYMBOL_TOK_LOCAL = 23,                 /* TOK_LOCAL  */
  YYSYMBOL_TOK_PRIVATE = 24,               /* TOK_PRIVATE  */
  YYSYMBOL_TOK_FUNCTION = 25,              /* TOK_FUNCTION  */
  YYSYMBOL_TOK_PROCEDURE = 26,             /* TOK_PROCEDURE  */
  YYSYMBOL_TOK_RETURN = 27,                /* TOK_RETURN  */
  YYSYMBOL_TOK_SET = 28,                   /* TOK_SET  */
  YYSYMBOL_TOK_CLEAR = 29,                 /* TOK_CLEAR  */
  YYSYMBOL_TOK_FOR = 30,                   /* TOK_FOR  */
  YYSYMBOL_TOK_TO = 31,                    /* TOK_TO  */
  YYSYMBOL_TOK_ENDFOR = 32,                /* TOK_ENDFOR  */
  YYSYMBOL_TOK_CLASS = 33,                 /* TOK_CLASS  */
  YYSYMBOL_TOK_OF = 34,                    /* TOK_OF  */
  YYSYMBOL_TOK_ENDCLASS = 35,              /* TOK_ENDCLASS  */
  YYSYMBOL_TOK_NEW = 36,                   /* TOK_NEW  */
  YYSYMBOL_TOK_WITH = 37,                  /* TOK_WITH  */
  YYSYMBOL_TOK_ENDWITH = 38,               /* TOK_ENDWITH  */
  YYSYMBOL_TOK_CUSTOM = 39,                /* TOK_CUSTOM  */
  YYSYMBOL_TOK_DEFINE = 40,                /* TOK_DEFINE  */
  YYSYMBOL_41_ = 41,                       /* '#'  */
  YYSYMBOL_42_ = 42,                       /* '='  */
  YYSYMBOL_43_ = 43,                       /* '('  */
  YYSYMBOL_44_ = 44,                       /* ')'  */
  YYSYMBOL_45_ = 45,                       /* ','  */
  YYSYMBOL_46_ = 46,                       /* '.'  */
  YYSYMBOL_47_ = 47,                       /* '+'  */
  YYSYMBOL_48_ = 48,                       /* '-'  */
  YYSYMBOL_49_ = 49,                       /* '*'  */
  YYSYMBOL_50_ = 50,                       /* '/'  */
  YYSYMBOL_YYACCEPT = 51,                  /* $accept  */
  YYSYMBOL_program = 52,                   /* program  */
  YYSYMBOL_define_macro = 53,              /* define_macro  */
  YYSYMBOL_stmt = 54,                      /* stmt  */
  YYSYMBOL_55_1 = 55,                      /* $@1  */
  YYSYMBOL_56_2 = 56,                      /* $@2  */
  YYSYMBOL_57_3 = 57,                      /* $@3  */
  YYSYMBOL_58_4 = 58,                      /* $@4  */
  YYSYMBOL_59_5 = 59,                      /* $@5  */
  YYSYMBOL_60_6 = 60,                      /* $@6  */
  YYSYMBOL_ident_object = 61,              /* ident_object  */
  YYSYMBOL_local_object = 62,              /* local_object  */
  YYSYMBOL_param_object = 63,              /* param_object  */
  YYSYMBOL_args_param = 64,                /* args_param  */
  YYSYMBOL_ident_string = 65,              /* ident_string  */
  YYSYMBOL_return_merge = 66,              /* return_merge  */
  YYSYMBOL_ident_merge = 67,               /* ident_merge  */
  YYSYMBOL_return_value = 68,              /* return_value  */
  YYSYMBOL_expr = 69,                      /* expr  */
  YYSYMBOL_70_7 = 70,                      /* $@7  */
  YYSYMBOL_71_8 = 71,                      /* $@8  */
  YYSYMBOL_term = 72,                      /* term  */
  YYSYMBOL_73_9 = 73,                      /* $@9  */
  YYSYMBOL_74_10 = 74,                     /* $@10  */
  YYSYMBOL_factor = 75,                    /* factor  */
  YYSYMBOL_number = 76,                    /* number  */
  YYSYMBOL_ident = 77,                     /* ident  */
  YYSYMBOL_if_ident_and_eqeq = 78,         /* if_ident_and_eqeq  */
  YYSYMBOL_if_ident_and_lteq = 79,         /* if_ident_and_lteq  */
  YYSYMBOL_if_ident_and_gteq = 80,         /* if_ident_and_gteq  */
  YYSYMBOL_if_ident_and_ltgt = 81,         /* if_ident_and_ltgt  */
  YYSYMBOL_if_rel = 82,                    /* if_rel  */
  YYSYMBOL_relation = 83,                  /* relation  */
  YYSYMBOL_if_ident_eqeq = 84,             /* if_ident_eqeq  */
  YYSYMBOL_if_ident_lteq = 85,             /* if_ident_lteq  */
  YYSYMBOL_if_ident_gteq = 86,             /* if_ident_gteq  */
  YYSYMBOL_if_ident_ltgt = 87,             /* if_ident_ltgt  */
  YYSYMBOL_if_else_endif = 88              /* if_else_endif  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  2
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   421

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  51
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  38
/* YYNRULES -- Number of rules.  */
#define YYNRULES  107
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  239

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   295


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,    41,     2,     2,     2,     2,
      43,    44,    49,    47,    45,    48,    46,    50,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    42,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    91,    91,    92,    93,   100,   101,   105,   107,   106,
     138,   138,   164,   165,   166,   167,   168,   169,   171,   172,
     173,   175,   174,   178,   179,   180,   182,   183,   185,   186,
     188,   189,   191,   192,   192,   193,   194,   195,   195,   196,
     197,   197,   198,   202,   203,   207,   208,   212,   213,   217,
     218,   222,   223,   224,   228,   229,   230,   234,   235,   236,
     238,   239,   241,   242,   244,   245,   246,   249,   250,   253,
     254,   259,   258,   294,   293,   328,   350,   349,   385,   384,
     419,   440,   458,   476,   497,   518,   536,   537,   538,   539,
     542,   543,   544,   545,   546,   550,   551,   552,   553,   554,
     557,   558,   559,   560,   563,   564,   565,   566
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "TOK_YYEOF", "error", "\"invalid token\"", "TOK_ID", "TOK_NUMBER",
  "TOK_STRING", "TOK_STRING_BRACE", "TOK_IF", "TOK_ELSE", "TOK_ENDIF",
  "TOK_EQEQ", "TOK_EQLT", "TOK_EQGT", "TOK_GTEQ", "TOK_LTEQ", "TOK_LTGT",
  "TOK_ASSIGN", "TOK_FALSE", "TOK_TRUE", "TOK_AND", "TOK_NOT", "TOK_OR",
  "TOK_PARAMETER", "TOK_LOCAL", "TOK_PRIVATE", "TOK_FUNCTION",
  "TOK_PROCEDURE", "TOK_RETURN", "TOK_SET", "TOK_CLEAR", "TOK_FOR",
  "TOK_TO", "TOK_ENDFOR", "TOK_CLASS", "TOK_OF", "TOK_ENDCLASS", "TOK_NEW",
  "TOK_WITH", "TOK_ENDWITH", "TOK_CUSTOM", "TOK_DEFINE", "'#'", "'='",
  "'('", "')'", "','", "'.'", "'+'", "'-'", "'*'", "'/'", "$accept",
  "program", "define_macro", "stmt", "$@1", "$@2", "$@3", "$@4", "$@5",
  "$@6", "ident_object", "local_object", "param_object", "args_param",
  "ident_string", "return_merge", "ident_merge", "return_value", "expr",
  "$@7", "$@8", "term", "$@9", "$@10", "factor", "number", "ident",
  "if_ident_and_eqeq", "if_ident_and_lteq", "if_ident_and_gteq",
  "if_ident_and_ltgt", "if_rel", "relation", "if_ident_eqeq",
  "if_ident_lteq", "if_ident_gteq", "if_ident_ltgt", "if_else_endif", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-47)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-79)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -47,   356,   -47,   -47,   -47,    25,    25,    25,    25,    50,
      50,    50,    25,    22,    56,   217,   -47,    -2,   380,   380,
     380,   380,   -47,    77,    78,   289,    -1,   328,   260,   -47,
     121,   121,   102,    17,    25,   260,    16,   -47,   -47,   -47,
     196,     0,   116,    78,   132,    89,   101,   -47,   -47,    18,
       3,    25,   -47,   -47,   -47,   -47,    52,    52,    52,    52,
      25,   -47,   158,    25,   -47,   -47,    29,   380,   380,     0,
      43,    25,   -28,   170,    78,   164,    78,   132,    89,    57,
     -47,   151,   166,   183,   188,   193,   380,   -47,    25,    21,
     225,    89,   -47,   136,    78,   237,   237,    83,    33,    74,
     380,   380,   380,   380,   212,    25,   216,   -47,   123,   241,
     242,    63,    25,    -8,   180,   380,   380,   -47,   132,     0,
       0,     0,     0,   -47,   380,    99,   380,   225,   -47,   380,
     380,   380,    25,   -47,   -47,   -47,   -47,   -47,   -47,   -47,
     -47,   -47,   255,   261,   262,   264,   115,   -47,    71,   380,
       0,   129,   380,   380,   240,   238,   -47,   101,   101,   -47,
     -47,   -47,    34,   -47,   -47,   -47,   -47,   -47,   163,   -47,
     -47,   -47,   -47,    37,   -47,   -47,   122,   138,   228,   230,
     -47,   380,   232,   -47,    89,    25,   246,   252,   235,   380,
     380,   181,    52,    52,    52,    52,   -47,   185,   244,    59,
     127,   127,   122,   -47,   380,   190,   380,   380,    25,   -47,
     -47,   380,   -47,   -47,   -47,   -47,   -47,   -47,    78,   132,
      78,   132,   -47,   257,   259,   -47,   -47,   194,   -47,   -47,
     380,   263,   256,   380,   380,   265,   -47,   380,   -47
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,     1,     4,    43,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     3,     0,     7,     7,
       7,     7,    42,     0,    49,     7,    47,     7,     7,    85,
      51,    51,     0,     0,     0,     7,     0,    84,    54,    55,
       0,     0,     0,    15,    16,    17,    75,    80,    81,     0,
       0,     0,   104,   105,   106,   107,     0,     0,     0,     0,
       0,    25,     0,     0,    23,    24,     0,     7,     7,     0,
       0,     0,     0,     0,     5,     6,    12,    13,    14,    71,
      82,     0,     0,     0,     0,     0,     7,    37,     0,    33,
       7,     8,    40,     0,    44,    90,    90,    90,    90,    90,
       7,     7,     7,     7,    50,     0,    48,    53,     0,     0,
       0,    71,     0,    21,     0,     7,     7,    83,    56,     0,
       0,     0,     0,    36,     7,     0,     7,     7,    35,     7,
       7,     7,     0,    91,    92,    93,    94,    98,    99,    95,
      96,    97,     0,     0,     0,     0,     0,    52,    57,     7,
       0,     0,     7,     7,     0,     0,    29,    72,    74,    77,
      79,    38,     0,    34,    32,     9,    41,    39,     0,   100,
     102,   101,   103,     0,    64,    65,    57,    62,    63,    67,
      70,     7,    66,    26,    10,     0,     0,     0,     0,     7,
       7,     0,     0,     0,     0,     0,    46,     0,     0,    66,
       0,     0,    57,    27,     7,     0,     7,     7,     0,    28,
      31,     7,    86,    88,    87,    89,    45,    69,    58,    59,
      61,    56,    68,     0,     0,    20,    22,     0,    30,    11,
       7,     0,     0,     7,     7,     0,    19,     7,    18
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -47,   -47,   -47,   -18,   -47,   -47,   -47,   -47,   -47,   -47,
     147,   231,    39,   268,   -10,   103,   128,   -47,    -7,   -47,
     -47,   126,   -47,   -47,   120,   266,   243,   -47,   -47,   -47,
     -47,    19,   -46,   -47,   -47,   -47,   -47,   -47
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     1,    15,    16,   129,   204,   153,   126,   124,   130,
      17,    27,    25,    67,    98,   179,   180,   181,    99,    82,
      83,    46,    84,    85,    47,    48,    30,   133,   134,   135,
     136,   137,   100,    18,    19,    20,    21,    22
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      52,    53,    54,    55,    37,    44,     4,    61,    45,    64,
      65,   101,   102,   103,    49,    62,   115,    73,    51,     4,
      37,     4,    37,    38,    39,     4,    38,    39,     4,    75,
      77,   152,     4,    78,    79,    86,    87,     4,    51,    90,
       4,    50,    91,    41,    51,    51,     4,    92,    42,   109,
     110,    70,   132,    29,    88,     4,    37,    38,    39,    41,
      71,    41,   111,    51,    42,    34,    42,    51,   123,    95,
      96,   118,   128,   107,     4,    37,    38,    39,   190,   127,
      81,   196,   142,   143,   144,   145,   112,    56,   174,   175,
      57,    58,    59,   132,   150,    41,    36,   155,   156,   104,
      42,   117,   132,   117,   -73,   108,   161,   -71,   163,   164,
     -73,   165,   166,   167,   176,   138,   139,   140,   141,    42,
      37,   -73,   -71,    51,    51,     4,    37,    38,    39,    51,
       4,   183,    38,    39,   186,   187,   -73,   -71,   178,   174,
     175,   182,   162,   184,    69,    51,   212,   213,   214,   215,
     -76,   -78,    23,    24,    26,    28,    38,    39,   173,    33,
      35,    51,    43,   203,    66,    41,   178,   147,    60,   199,
      42,   209,   210,   192,   185,    51,   193,   194,   195,    81,
     131,    72,    51,    74,    51,   200,   223,    76,   225,   226,
     219,   221,   178,   228,   105,   182,    89,    93,    94,     4,
      37,    38,    39,    97,    97,    97,    97,    24,   116,    51,
      26,   -73,   232,    24,   119,   235,   236,   113,   114,   238,
       4,    37,    38,    39,   154,   211,    51,    51,     4,   216,
     120,    51,     5,    40,   224,   125,    51,   121,   231,    41,
      51,   159,   160,   122,    42,   157,   158,     6,     7,     8,
       9,    10,   146,    31,    32,    11,   132,    60,    12,   151,
      41,    63,    13,     4,   169,    42,    14,     5,   148,   149,
     170,   171,    81,   172,   188,   201,   189,   202,   208,   168,
     -71,   206,     6,     7,     8,     9,    10,   207,   217,   229,
      11,   234,     4,    12,   106,   177,     5,    13,   230,    68,
     237,    14,   233,     0,   198,   222,    51,     0,    80,   191,
       0,     6,     7,     8,     9,    10,     0,     0,     0,    11,
     197,     0,    12,   177,     0,     0,    13,     0,     0,     0,
      14,     4,   205,     0,    60,     5,     0,     0,     0,    97,
      97,    97,    97,     0,     0,     0,     0,   218,   220,   177,
       6,     7,     8,     9,    10,   227,     2,     3,    11,     4,
       0,    12,     0,     5,     0,    13,     0,     0,     0,    14,
       0,     0,     0,    63,     0,     0,     0,     0,     6,     7,
       8,     9,    10,     4,     0,     0,    11,     5,     0,    12,
       0,     0,     0,    13,     0,     0,     0,    14,     0,     0,
       0,     0,     6,     7,     8,     9,    10,     0,     0,     0,
      11,     0,     0,    12,     0,     0,     0,    13,     0,     0,
       0,    14
};

static const yytype_int16 yycheck[] =
{
      18,    19,    20,    21,     4,    15,     3,    25,    15,    27,
      28,    57,    58,    59,    16,    16,    44,    35,    46,     3,
       4,     3,     4,     5,     6,     3,     5,     6,     3,    36,
      40,    39,     3,    40,    41,    17,    18,     3,    46,    49,
       3,    43,    49,    43,    46,    46,     3,    44,    48,    67,
      68,    34,    19,     3,    36,     3,     4,     5,     6,    43,
      43,    43,    69,    46,    48,    43,    48,    46,    86,    17,
      18,    81,    90,    44,     3,     4,     5,     6,    44,    89,
      47,    44,   100,   101,   102,   103,    43,    10,    17,    18,
      13,    14,    15,    19,    31,    43,    40,   115,   116,    60,
      48,    44,    19,    44,    47,    66,   124,    48,   126,   127,
      47,   129,   130,   131,    43,    96,    97,    98,    99,    48,
       4,    47,    48,    46,    46,     3,     4,     5,     6,    46,
       3,   149,     5,     6,   152,   153,    47,    48,   148,    17,
      18,   148,    43,   150,    42,    46,   192,   193,   194,   195,
      49,    50,     5,     6,     7,     8,     5,     6,    43,    12,
      13,    46,    15,   181,    43,    43,   176,    44,    45,   176,
      48,   189,   190,    10,    45,    46,    13,    14,    15,    47,
      44,    34,    46,    36,    46,    47,   204,    40,   206,   207,
     200,   201,   202,   211,    36,   202,    49,    50,    51,     3,
       4,     5,     6,    56,    57,    58,    59,    60,    38,    46,
      63,    47,   230,    66,    48,   233,   234,    70,    71,   237,
       3,     4,     5,     6,    44,    44,    46,    46,     3,    44,
      47,    46,     7,    16,    44,    88,    46,    49,    44,    43,
      46,   121,   122,    50,    48,   119,   120,    22,    23,    24,
      25,    26,   105,    10,    11,    30,    19,    45,    33,   112,
      43,    45,    37,     3,     9,    48,    41,     7,    27,    27,
       9,     9,    47,     9,    34,    47,    38,    47,    43,   132,
      48,    35,    22,    23,    24,    25,    26,    35,    44,    32,
      30,    35,     3,    33,    63,   148,     7,    37,    39,    31,
      35,    41,    39,    -1,   176,   202,    46,    -1,    42,   162,
      -1,    22,    23,    24,    25,    26,    -1,    -1,    -1,    30,
     173,    -1,    33,   176,    -1,    -1,    37,    -1,    -1,    -1,
      41,     3,   185,    -1,    45,     7,    -1,    -1,    -1,   192,
     193,   194,   195,    -1,    -1,    -1,    -1,   200,   201,   202,
      22,    23,    24,    25,    26,   208,     0,     1,    30,     3,
      -1,    33,    -1,     7,    -1,    37,    -1,    -1,    -1,    41,
      -1,    -1,    -1,    45,    -1,    -1,    -1,    -1,    22,    23,
      24,    25,    26,     3,    -1,    -1,    30,     7,    -1,    33,
      -1,    -1,    -1,    37,    -1,    -1,    -1,    41,    -1,    -1,
      -1,    -1,    22,    23,    24,    25,    26,    -1,    -1,    -1,
      30,    -1,    -1,    33,    -1,    -1,    -1,    37,    -1,    -1,
      -1,    41
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    52,     0,     1,     3,     7,    22,    23,    24,    25,
      26,    30,    33,    37,    41,    53,    54,    61,    84,    85,
      86,    87,    88,    61,    61,    63,    61,    62,    61,     3,
      77,    77,    77,    61,    43,    61,    40,     4,     5,     6,
      16,    43,    48,    61,    65,    69,    72,    75,    76,    16,
      43,    46,    54,    54,    54,    54,    10,    13,    14,    15,
      45,    54,    16,    45,    54,    54,    43,    64,    64,    42,
      34,    43,    61,    54,    61,    69,    61,    65,    69,    69,
      76,    47,    70,    71,    73,    74,    17,    18,    36,    61,
      65,    69,    44,    61,    61,    17,    18,    61,    65,    69,
      83,    83,    83,    83,    63,    36,    62,    44,    63,    54,
      54,    69,    43,    61,    61,    44,    38,    44,    65,    48,
      47,    49,    50,    54,    59,    61,    58,    65,    54,    55,
      60,    44,    19,    78,    79,    80,    81,    82,    82,    82,
      82,    82,    54,    54,    54,    54,    61,    44,    27,    27,
      31,    61,    39,    57,    44,    54,    54,    72,    72,    75,
      75,    54,    43,    54,    54,    54,    54,    54,    61,     9,
       9,     9,     9,    43,    17,    18,    43,    61,    65,    66,
      67,    68,    69,    54,    69,    45,    54,    54,    34,    38,
      44,    61,    10,    13,    14,    15,    44,    61,    67,    69,
      47,    47,    47,    54,    56,    61,    35,    35,    43,    54,
      54,    44,    83,    83,    83,    83,    44,    44,    61,    65,
      61,    65,    66,    54,    44,    54,    54,    61,    54,    32,
      39,    44,    54,    39,    35,    54,    54,    35,    54
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    51,    52,    52,    52,    53,    53,    54,    55,    54,
      56,    54,    54,    54,    54,    54,    54,    54,    54,    54,
      54,    57,    54,    54,    54,    54,    54,    54,    54,    54,
      54,    54,    54,    58,    54,    54,    54,    59,    54,    54,
      60,    54,    54,    61,    61,    62,    62,    62,    62,    63,
      63,    64,    64,    64,    65,    65,    65,    66,    66,    66,
      66,    66,    66,    66,    66,    66,    66,    67,    67,    68,
      68,    70,    69,    71,    69,    69,    73,    72,    74,    72,
      72,    75,    75,    75,    76,    77,    78,    79,    80,    81,
      82,    82,    82,    82,    82,    83,    83,    83,    83,    83,
      84,    85,    86,    87,    88,    88,    88,    88
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     2,     3,     3,     0,     0,     5,
       0,     9,     3,     3,     3,     2,     2,     2,    13,    12,
       8,     0,     8,     3,     3,     3,     6,     7,     7,     5,
       8,     7,     5,     0,     5,     4,     4,     0,     5,     5,
       0,     5,     1,     1,     3,     7,     6,     1,     3,     1,
       3,     0,     3,     2,     1,     1,     3,     0,     3,     3,
       3,     3,     1,     1,     1,     1,     1,     1,     3,     3,
       1,     0,     4,     0,     4,     1,     0,     4,     0,     4,
       1,     1,     2,     3,     1,     1,     4,     4,     4,     4,
       0,     1,     1,     1,     1,     2,     2,     2,     2,     2,
       6,     6,     6,     6,     2,     2,     2,     2
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= TOK_YYEOF)
    {
      yychar = TOK_YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* program: %empty  */
#line 91 "dBaseDSLwin32.y"
                      { }
#line 1388 "dBaseDSLwin32.tab.c"
    break;

  case 3: /* program: program stmt  */
#line 92 "dBaseDSLwin32.y"
                       { }
#line 1394 "dBaseDSLwin32.tab.c"
    break;

  case 4: /* program: program error  */
#line 93 "dBaseDSLwin32.y"
                        {
		char * buffer = strdup( "Error in Grammar" );
		yyerror( buffer );
	}
#line 1403 "dBaseDSLwin32.tab.c"
    break;

  case 7: /* stmt: %empty  */
#line 105 "dBaseDSLwin32.y"
                            { }
#line 1409 "dBaseDSLwin32.tab.c"
    break;

  case 8: /* $@1: %empty  */
#line 107 "dBaseDSLwin32.y"
        {
		// -----------------------------
		// make a ident node to tree
		// -----------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );
		node_new->token = (char *) malloc( strlen( (yyvsp[-2].node_and_value).name     ) + 1);
		
		strcpy(node_new->token, (yyvsp[-2].node_and_value).name   );
		node_new->token_id = tt_const_ident;

		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;


		// ------------------------------
		// make a ident expr node to tree
		// ------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "assign");
		node_new->token_id = tt_ident_assign;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1445 "dBaseDSLwin32.tab.c"
    break;

  case 10: /* $@2: %empty  */
#line 138 "dBaseDSLwin32.y"
                                                   {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forloop");

		(yyvsp[-5].node_and_value).node_for = (struct node *) malloc( sizeof( struct node ) );
		(yyvsp[-5].node_and_value).node_for->token_id = tt_for_loop;
		(yyvsp[-5].node_and_value).node_for->for_from = (yyvsp[-2].node_and_value).value;
		(yyvsp[-5].node_and_value).node_for->for_to   = (yyvsp[0].node_and_value).value;

		node_new->prev = (yyvsp[-5].node_and_value).node_for;
		node_new->next = NULL;
		node_prev      = node_new;

	}
#line 1466 "dBaseDSLwin32.tab.c"
    break;

  case 11: /* stmt: TOK_FOR ident '=' expr TOK_TO expr $@2 stmt TOK_ENDFOR  */
#line 153 "dBaseDSLwin32.y"
                                {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forend");
		node_new->token_id = (yyvsp[-8].node_and_value).node_for->token_id;
		
		node_new->prev = (yyvsp[-8].node_and_value).node_for;
		node_new->next = NULL;
		node_prev      = node_new;
	}
#line 1482 "dBaseDSLwin32.tab.c"
    break;

  case 12: /* stmt: define_macro TOK_ASSIGN ident_object  */
#line 164 "dBaseDSLwin32.y"
                                                     { }
#line 1488 "dBaseDSLwin32.tab.c"
    break;

  case 13: /* stmt: define_macro TOK_ASSIGN ident_string  */
#line 165 "dBaseDSLwin32.y"
                                                     { }
#line 1494 "dBaseDSLwin32.tab.c"
    break;

  case 14: /* stmt: define_macro TOK_ASSIGN expr  */
#line 166 "dBaseDSLwin32.y"
                                                     { }
#line 1500 "dBaseDSLwin32.tab.c"
    break;

  case 15: /* stmt: define_macro ident_object  */
#line 167 "dBaseDSLwin32.y"
                                                     { }
#line 1506 "dBaseDSLwin32.tab.c"
    break;

  case 16: /* stmt: define_macro ident_string  */
#line 168 "dBaseDSLwin32.y"
                                                     { }
#line 1512 "dBaseDSLwin32.tab.c"
    break;

  case 17: /* stmt: define_macro expr  */
#line 169 "dBaseDSLwin32.y"
                                                     {
	}
#line 1519 "dBaseDSLwin32.tab.c"
    break;

  case 21: /* $@3: %empty  */
#line 175 "dBaseDSLwin32.y"
    {
        add_node_new_class_obj( (yyvsp[-2].node_and_value).name, (yyvsp[0].node_and_value).name );    }
#line 1526 "dBaseDSLwin32.tab.c"
    break;

  case 22: /* stmt: TOK_CLASS ident_object TOK_OF ident_object $@3 stmt TOK_ENDCLASS stmt  */
#line 176 "dBaseDSLwin32.y"
                                                                                  {
	}
#line 1533 "dBaseDSLwin32.tab.c"
    break;

  case 24: /* stmt: TOK_PRIVATE ident_object stmt  */
#line 179 "dBaseDSLwin32.y"
                                                      { }
#line 1539 "dBaseDSLwin32.tab.c"
    break;

  case 25: /* stmt: TOK_PARAMETER param_object stmt  */
#line 180 "dBaseDSLwin32.y"
                                                      {
	}
#line 1546 "dBaseDSLwin32.tab.c"
    break;

  case 27: /* stmt: TOK_FUNCTION ident args_param stmt TOK_RETURN return_value stmt  */
#line 183 "dBaseDSLwin32.y"
                                                                                        {
	}
#line 1553 "dBaseDSLwin32.tab.c"
    break;

  case 29: /* stmt: TOK_WITH ident_object stmt TOK_ENDWITH stmt  */
#line 186 "dBaseDSLwin32.y"
                                                                        {
	}
#line 1560 "dBaseDSLwin32.tab.c"
    break;

  case 31: /* stmt: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')' stmt  */
#line 189 "dBaseDSLwin32.y"
                                                                                        {
	}
#line 1567 "dBaseDSLwin32.tab.c"
    break;

  case 33: /* $@4: %empty  */
#line 192 "dBaseDSLwin32.y"
                                                      { }
#line 1573 "dBaseDSLwin32.tab.c"
    break;

  case 37: /* $@5: %empty  */
#line 195 "dBaseDSLwin32.y"
                                                               { }
#line 1579 "dBaseDSLwin32.tab.c"
    break;

  case 40: /* $@6: %empty  */
#line 197 "dBaseDSLwin32.y"
                                                               { }
#line 1585 "dBaseDSLwin32.tab.c"
    break;

  case 46: /* local_object: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')'  */
#line 209 "dBaseDSLwin32.y"
    {
        add_node_new_class_ref( (yyvsp[-2].node_and_value).name, (yyvsp[-5].node_and_value).name );
    }
#line 1593 "dBaseDSLwin32.tab.c"
    break;

  case 59: /* return_merge: ident_object '+' ident_string  */
#line 236 "dBaseDSLwin32.y"
                                          {
	}
#line 1600 "dBaseDSLwin32.tab.c"
    break;

  case 61: /* return_merge: ident_string '+' ident_object  */
#line 239 "dBaseDSLwin32.y"
                                              {
	}
#line 1607 "dBaseDSLwin32.tab.c"
    break;

  case 63: /* return_merge: ident_string  */
#line 242 "dBaseDSLwin32.y"
                             {
	}
#line 1614 "dBaseDSLwin32.tab.c"
    break;

  case 71: /* $@7: %empty  */
#line 259 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_sub;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1635 "dBaseDSLwin32.tab.c"
    break;

  case 72: /* expr: expr $@7 '-' term  */
#line 276 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a sub term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_sub;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = (yyvsp[-3].node_and_value).value - (yyvsp[0].node_and_value).value;
	}
#line 1657 "dBaseDSLwin32.tab.c"
    break;

  case 73: /* $@8: %empty  */
#line 294 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "expr");
		node_new->token_id = tt_expr_add;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1678 "dBaseDSLwin32.tab.c"
    break;

  case 74: /* expr: expr $@8 '+' term  */
#line 311 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a add term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_add;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = (yyvsp[-3].node_and_value).value + (yyvsp[0].node_and_value).value;
	}
#line 1700 "dBaseDSLwin32.tab.c"
    break;

  case 75: /* expr: term  */
#line 329 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = (yyvsp[0].node_and_value).value;
	}
#line 1722 "dBaseDSLwin32.tab.c"
    break;

  case 76: /* $@9: %empty  */
#line 350 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a term node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term");
		node_new->token_id = tt_term_mul;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1743 "dBaseDSLwin32.tab.c"
    break;

  case 77: /* term: term $@9 '*' factor  */
#line 367 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a mul term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );

		strcpy(node_new->token, "factor");
		node_new->token_id = tt_term_mul;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = (yyvsp[-3].node_and_value).value * (yyvsp[0].node_and_value).value;
	}
#line 1765 "dBaseDSLwin32.tab.c"
    break;

  case 78: /* $@10: %empty  */
#line 385 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a div node to tree:
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "term" );
		node_new->token_id = tt_term_div;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1786 "dBaseDSLwin32.tab.c"
    break;

  case 79: /* term: term $@10 '/' factor  */
#line 402 "dBaseDSLwin32.y"
        {
		// ----------------------------
		// make a div term node to tree
		// ----------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor_div;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = (yyvsp[-3].node_and_value).value / (yyvsp[0].node_and_value).value;
	}
#line 1808 "dBaseDSLwin32.tab.c"
    break;

  case 80: /* term: factor  */
#line 420 "dBaseDSLwin32.y"
        {
		// --------------------------
		// make a factor node to tree
		// --------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value) = (yyvsp[0].node_and_value);
	}
#line 1830 "dBaseDSLwin32.tab.c"
    break;

  case 81: /* factor: number  */
#line 441 "dBaseDSLwin32.y"
        {
		// --------------------------
		// make a number node to tree
		// --------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor");
		node_new->token_id = tt_factor_number;

		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value) = (yyvsp[0].node_and_value);
	}
#line 1852 "dBaseDSLwin32.tab.c"
    break;

  case 82: /* factor: '-' number  */
#line 459 "dBaseDSLwin32.y"
        {
		// -----------------------------------
		// make a negative number node to tree
		// -----------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "factor" );
		node_new->token_id = tt_factor_neg;

		node_new->value = -(yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value = -(yyvsp[0].node_and_value).value;
	}
#line 1874 "dBaseDSLwin32.tab.c"
    break;

  case 83: /* factor: '(' expr ')'  */
#line 477 "dBaseDSLwin32.y"
        {
		// ---------------------------------
		// make a parens number node to tree
		// ---------------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );

		strcpy(node_new->token, "factor"  );
		node_new->token_id = tt_factor_paren;
		
		node_new->value = (yyvsp[-1].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value) = (yyvsp[-1].node_and_value);
	}
#line 1896 "dBaseDSLwin32.tab.c"
    break;

  case 84: /* number: TOK_NUMBER  */
#line 498 "dBaseDSLwin32.y"
        {
		// -------------------------
		// add a number node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		node_new->token_id = tt_const_number;
		strcpy(node_new->token, "const");
		
		node_new->value = (yyvsp[0].node_and_value).value;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
		(yyval.node_and_value).value  = (yyvsp[0].node_and_value).value;
	}
#line 1918 "dBaseDSLwin32.tab.c"
    break;

  case 85: /* ident: TOK_ID  */
#line 519 "dBaseDSLwin32.y"
        {
		// -------------------------
		// add a ident node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );

		node_new->token = strdup( (yyvsp[0].node_and_value).name );
		(yyval.node_and_value).name         = strdup( (yyvsp[0].node_and_value).name );

		node_new->token_id = tt_const_ident;
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1938 "dBaseDSLwin32.tab.c"
    break;

  case 104: /* if_else_endif: if_ident_eqeq stmt  */
#line 563 "dBaseDSLwin32.y"
                                   { }
#line 1944 "dBaseDSLwin32.tab.c"
    break;

  case 105: /* if_else_endif: if_ident_lteq stmt  */
#line 564 "dBaseDSLwin32.y"
                                   { }
#line 1950 "dBaseDSLwin32.tab.c"
    break;

  case 106: /* if_else_endif: if_ident_gteq stmt  */
#line 565 "dBaseDSLwin32.y"
                                   { }
#line 1956 "dBaseDSLwin32.tab.c"
    break;

  case 107: /* if_else_endif: if_ident_ltgt stmt  */
#line 566 "dBaseDSLwin32.y"
                                   { }
#line 1962 "dBaseDSLwin32.tab.c"
    break;


#line 1966 "dBaseDSLwin32.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= TOK_YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == TOK_YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 569 "dBaseDSLwin32.y"


// ----------------------------------------------------------------------------
// add a new class forwarder to the tree ...
// ----------------------------------------------------------------------------
void
add_node_new_class_ref(
    char* name,
    char* parent)
{
    struct node * newnode = (struct node*) malloc( sizeof( struct node ));
    struct node * current = node_head;
    
    newnode->token_id     = tt_class_ref;

    if (newnode == NULL) {
        MessageBoxA(0,"internal memory error.","Error",0);
        return;
    }

    newnode->class_parent = strdup( parent );
    newnode->class_name   = strdup( name   );
    
    newnode->token_id = tt_class_ref;
    newnode->next = NULL;
    newnode->prev = NULL;
    
    if (current == NULL) {
        node_head = newnode;
    }

    while (current->next != NULL) {
        current = current->next;
    }

    current->next = newnode;
    newnode->prev = current;
}

// ----------------------------------------------------------------------------
// add a new object class to the tree ...
// ----------------------------------------------------------------------------
void
add_node_new_class_obj(
    char* name,
    char* class_type)
{
    struct node * newnode = (struct node*) malloc( sizeof( struct node ));
    struct node * current = node_head;

    if (current == NULL) {
        MessageBoxA(0, "the list is empty","Warning",0);
        return;
    }

    newnode->class_parent = strdup( class_type );
    newnode->class_name   = strdup( name );

    newnode->token_id     = tt_class_obj;
    newnode->next = NULL;

    // ----------------------
    // safety search ...
    // ----------------------
    while (current->next != NULL) {
        current = current->next;
    }

    current->next = newnode;
    newnode->prev = current;
}

// ----------------------------------------------------------------------------
// handle the created AST ...
// ----------------------------------------------------------------------------
void display_list()
{
    struct node * current = node_head;
    struct node * tempA   = node_head;
    struct node * tempB   = node_head;
    
    BOOL found   = false ;

    char* buffer = (char *) malloc( 2048 );
    char* class_name;

    if (current == NULL) {
        MessageBoxA(0, "the list is empty","Warning",0);
        return;
    }

    while (current != NULL)
    {
        if (current->token_id == tt_class_ref)
        {
            class_name = strdup( current->class_name );
            tempA = node_head;
            
            while (tempA != NULL)
            {
                if (tempA->class_name != NULL)
                {
                    tempB = node_head;
                    while (tempB != NULL)
                    {
                        if (tempB->token_id == tt_class_obj)
                        {
                            /*  sprintf(buffer,"C: %s\nB: %s\nA: %s\nP: %s",
                                class_name,
                                tempB->class_name,
                                tempA->class_name,
                                tempB->class_parent);
                                MessageBoxA(0,buffer,"impo",0);
                            */
                            if (!strcmp( class_name, tempB->class_name) ) {
                            if (!strcmp( tempB->class_parent, "form" )  )
                            {
                                found = true;
                                
                                if (Form1 != NULL) {
                                    delete Form1;
                                    break;
                                }
                                
                                Form1 = new TForm1(Application);
                                Form1->ShowModal();
                                
                                break;
                                
                                /*
                                    sprintf( buffer, "class: %s\nclass name: %s\nparent: %s",
                                    tempA->class_parent,
                                    tempB->class_name,
                                    tempB->class_parent );
                                    MessageBoxA( 0,buffer,"uuuuu",0 );
                                */
                            }   }
                        }
                        found = false;
                        tempB = tempB->next;
                    }
                }
                tempA = tempA->next;
            }
            if (found == false) {
                std::sprintf( buffer,"class >> %s << not found !!!",
                class_name);
                yyerror( buffer );
            }
            break;
        }
        current = current->next;
    }

    // ----------------
    // free memory ...
    // ----------------
    free( buffer );
    
    current = node_head;
    while (current != NULL)
    {
        struct node * temp = current;
        current = current->next;
        
        free( temp->class_parent );
        free( temp->class_name   );
        free( temp );
    }
    
    MessageBoxA( 0,"end of task","Info",0 );
}

// ----------------------------------------------------------------------------
// make/add a node to the parse tree ...
// ----------------------------------------------------------------------------
struct node *
mknode(
	char *fmt,
	struct node * prev,
	float         value,
	char        * token)
{
	struct node *
	newnode = (struct node *) malloc( sizeof( struct node )    );
	newnode->token = (char *) malloc( strlen( token       ) + 1);
	newnode->prev  =  prev;
	newnode->next  =  NULL;
	
	strcpy(newnode->token, token);
	return newnode;
}

// ----------------------------------------------------------------------------
// traverse throug the created parse tree from behind the scenes ...
// ----------------------------------------------------------------------------
void
tree_execute(void)
{
	char        * buffer;
	struct node * ptr = node_new;
	
	buffer = (char *) malloc(255);
	node_prev = ptr;
	
	// ---------------------------------------
	// traverse the parse tree from behind ...
	// ---------------------------------------
	while (ptr != NULL) {
		if (node_prev != NULL) {
			switch (node_prev->token_id)
			{
				case tt_const_ident:
					std::sprintf(buffer,"detected ident: %s",
					ptr->token);
				break;

				case tt_const_number:
					std::sprintf(buffer,"fetch number: %f",
					ptr->value);
				break;

				case tt_factor_neg:
					std::sprintf(buffer,"negate number factor: %f",
					ptr->value);
				break;

				case tt_factor_term:
					std::sprintf(buffer,"term factor:  %f ",
					ptr->value);
				break;

				case tt_factor_paren:
					std::sprintf(buffer,"parens number factor: ( %f )",
					ptr->value);
				break;

				case tt_factor_number:
					std::sprintf(buffer,"simple factor number");
				break;

				case tt_term:    break;
				case tt_factor:  break;

				case tt_expr_sub: std::sprintf(buffer, "expr sub" ); break;
				case tt_expr_add: std::sprintf(buffer, "expr add" ); break;
				case tt_expr_mul: std::sprintf(buffer, "expr mul" ); break;
				case tt_expr_div: std::sprintf(buffer, "expr div" ); break;

				case tt_term_sub: std::sprintf(buffer, "term sub" ); break;
				case tt_term_add: std::sprintf(buffer, "term add" ); break;
				case tt_term_mul: std::sprintf(buffer, "term mul" ); break;
				case tt_term_div: std::sprintf(buffer, "term div" ); break;

				case tt_factor_sub: std::sprintf(buffer, "factor sub" ); break;
				case tt_factor_add: std::sprintf(buffer, "factor add" ); break;
				case tt_factor_mul: std::sprintf(buffer, "factor mul" ); break;
				case tt_factor_div: std::sprintf(buffer, "factor div" ); break;

				case tt_ident_assign:
					std::sprintf(buffer,"assign to: '%s' := %f",
						ptr->token,
						ptr->value
					);
				break;
				
				default:
					std::sprintf(buffer,"error on fetch type");
				break;
			}	MessageBoxA(0,buffer,"DebugInfo",0);
		}
		node_prev = ptr->prev;
		ptr       = ptr->prev;
	}
	
	free(buffer);
}
