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
#line 1 "assemblerDSLwin32.y"

// ----------------------------------------------------------------------------
// File   : assemblerDSLdos32.y
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
# include "../common.h"

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

#line 106 "assemblerDSLwin32.tab.c"

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

#include "assemblerDSLwin32.tab.h"
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
  YYSYMBOL_ident_object = 60,              /* ident_object  */
  YYSYMBOL_local_object = 61,              /* local_object  */
  YYSYMBOL_param_object = 62,              /* param_object  */
  YYSYMBOL_args_param = 63,                /* args_param  */
  YYSYMBOL_ident_string = 64,              /* ident_string  */
  YYSYMBOL_return_merge = 65,              /* return_merge  */
  YYSYMBOL_ident_merge = 66,               /* ident_merge  */
  YYSYMBOL_return_value = 67,              /* return_value  */
  YYSYMBOL_expr = 68,                      /* expr  */
  YYSYMBOL_69_6 = 69,                      /* $@6  */
  YYSYMBOL_70_7 = 70,                      /* $@7  */
  YYSYMBOL_term = 71,                      /* term  */
  YYSYMBOL_72_8 = 72,                      /* $@8  */
  YYSYMBOL_73_9 = 73,                      /* $@9  */
  YYSYMBOL_factor = 74,                    /* factor  */
  YYSYMBOL_number = 75,                    /* number  */
  YYSYMBOL_ident = 76,                     /* ident  */
  YYSYMBOL_if_ident_and_eqeq = 77,         /* if_ident_and_eqeq  */
  YYSYMBOL_if_ident_and_lteq = 78,         /* if_ident_and_lteq  */
  YYSYMBOL_if_ident_and_gteq = 79,         /* if_ident_and_gteq  */
  YYSYMBOL_if_ident_and_ltgt = 80,         /* if_ident_and_ltgt  */
  YYSYMBOL_if_rel = 81,                    /* if_rel  */
  YYSYMBOL_relation = 82,                  /* relation  */
  YYSYMBOL_if_ident_eqeq = 83,             /* if_ident_eqeq  */
  YYSYMBOL_if_ident_lteq = 84,             /* if_ident_lteq  */
  YYSYMBOL_if_ident_gteq = 85,             /* if_ident_gteq  */
  YYSYMBOL_if_ident_ltgt = 86,             /* if_ident_ltgt  */
  YYSYMBOL_if_else_endif = 87              /* if_else_endif  */
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
#define YYLAST   444

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  51
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  37
/* YYNRULES -- Number of rules.  */
#define YYNRULES  106
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  238

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
       0,    76,    76,    77,    78,    87,    88,    92,    94,    93,
     125,   125,   151,   152,   153,   154,   155,   156,   158,   159,
     160,   161,   163,   165,   166,   168,   169,   171,   172,   174,
     175,   177,   178,   178,   179,   180,   181,   181,   182,   183,
     183,   184,   188,   189,   193,   194,   195,   196,   200,   201,
     205,   206,   207,   211,   212,   213,   217,   218,   219,   221,
     222,   224,   225,   227,   228,   229,   232,   233,   236,   237,
     242,   241,   277,   276,   311,   333,   332,   368,   367,   402,
     423,   441,   459,   480,   501,   522,   523,   524,   525,   528,
     529,   530,   531,   532,   536,   537,   538,   539,   540,   543,
     544,   545,   546,   549,   550,   551,   552
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
  "ident_object", "local_object", "param_object", "args_param",
  "ident_string", "return_merge", "ident_merge", "return_value", "expr",
  "$@6", "$@7", "term", "$@8", "$@9", "factor", "number", "ident",
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

#define YYTABLE_NINF (-78)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -47,   379,   -47,   -47,   -47,    24,    24,    24,    24,    45,
      45,    45,    24,    37,   -26,    87,   -47,    99,   403,   403,
     403,   403,   -47,   108,    50,   312,    -1,   351,   287,   -47,
      64,    64,    94,   116,    24,   287,    62,   -47,   -47,   -47,
      96,     4,   137,    50,   105,   126,    11,   -47,   -47,    15,
      13,    24,   -47,   -47,   -47,   -47,    19,    19,    19,    19,
      24,   -47,   121,    24,   -47,   -47,    25,   403,   403,     4,
      61,    24,    27,   130,    50,   140,    50,   105,   126,   117,
     -47,   174,   151,   155,   190,   158,   403,   -47,    24,    48,
     231,   126,   -47,   112,    50,   229,   229,    97,   106,   -13,
     403,   403,   403,   403,   204,    24,   205,   -47,   168,   224,
     225,    86,    24,   262,   159,   403,   403,   -47,   105,     4,
       4,     4,     4,   -47,   403,   124,   403,   231,   -47,   403,
     403,   403,    24,   -47,   -47,   -47,   -47,   -47,   -47,   -47,
     -47,   -47,   250,   251,   253,   254,   138,   -47,    38,   403,
       4,   171,   403,   232,   236,   228,   -47,    11,    11,   -47,
     -47,   -47,    43,   -47,   -47,   -47,   -47,   -47,   114,   -47,
     -47,   -47,   -47,    76,   -47,   -47,    71,   185,   226,   227,
     -47,   403,   223,   -47,   126,    24,   241,   403,   237,   403,
     403,   163,    19,    19,    19,    19,   -47,   178,   233,   107,
     195,   195,    71,   -47,   403,   179,   403,   -47,    24,   -47,
     -47,   403,   -47,   -47,   -47,   -47,   -47,   -47,    50,   105,
      50,   105,   -47,   247,   242,   -47,   191,   -47,   -47,   403,
     244,   256,   403,   403,   258,   -47,   403,   -47
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,     1,     4,    42,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     3,     0,     7,     7,
       7,     7,    41,     0,    48,     7,    46,     7,     7,    84,
      50,    50,     0,     0,     0,     7,     0,    83,    53,    54,
       0,     0,     0,    15,    16,    17,    74,    79,    80,     0,
       0,     0,   103,   104,   105,   106,     0,     0,     0,     0,
       0,    24,     0,     0,    22,    23,     0,     7,     7,     0,
       0,     0,     0,     0,     5,     6,    12,    13,    14,    70,
      81,     0,     0,     0,     0,     0,     7,    36,     0,    32,
       7,     8,    39,     0,    43,    89,    89,    89,    89,    89,
       7,     7,     7,     7,    49,     0,    47,    52,     0,     0,
       0,    70,     0,     7,     0,     7,     7,    82,    55,     0,
       0,     0,     0,    35,     7,     0,     7,     7,    34,     7,
       7,     7,     0,    90,    91,    92,    93,    97,    98,    94,
      95,    96,     0,     0,     0,     0,     0,    51,    56,     7,
       0,     0,     7,     0,     0,     0,    28,    71,    73,    76,
      78,    37,     0,    33,    31,     9,    40,    38,     0,    99,
     101,   100,   102,     0,    63,    64,    56,    61,    62,    66,
      69,     7,    65,    25,    10,     0,     0,     7,     0,     7,
       7,     0,     0,     0,     0,     0,    45,     0,     0,    65,
       0,     0,    56,    26,     7,     0,     7,    21,     0,    27,
      30,     7,    85,    87,    86,    88,    44,    68,    57,    58,
      60,    55,    67,     0,     0,    20,     0,    29,    11,     7,
       0,     0,     7,     7,     0,    19,     7,    18
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -47,   -47,   -47,   -18,   -47,   -47,   -47,   -47,   -47,   170,
     235,    66,   265,   -11,    95,   113,   -47,   -10,   -47,   -47,
     123,   -47,   -47,   125,   263,   234,   -47,   -47,   -47,   -47,
      98,   -46,   -47,   -47,   -47,   -47,   -47
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     1,    15,    16,   129,   204,   126,   124,   130,    17,
      27,    25,    67,    98,   179,   180,   181,    99,    82,    83,
      46,    84,    85,    47,    48,    30,   133,   134,   135,   136,
     137,   100,    18,    19,    20,    21,    22
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      52,    53,    54,    55,    44,    45,   132,    61,    37,    64,
      65,   101,   102,   103,    36,    62,     4,    73,     4,    37,
      38,    39,     4,    37,    38,    39,    75,     4,     4,    77,
      78,    79,    86,    87,   -72,   -70,    95,    96,    90,    91,
       4,     4,    37,    38,    39,    51,     4,    41,    29,   109,
     110,    88,    42,    38,    39,   174,   175,    92,    41,   111,
     -75,   -77,    41,    42,     4,     4,    37,    42,   123,   107,
     118,   115,   128,    51,     4,    37,    38,    39,   127,     4,
      34,   176,   142,   143,   144,   145,    42,   190,   174,   175,
       4,    37,    38,    39,    51,   153,    51,   155,   156,     4,
      37,    38,    39,    40,   112,    41,   161,    66,   163,   164,
      42,   165,   166,   167,    41,    49,   132,   150,    56,    42,
     196,    57,    58,    59,   192,   132,   104,   193,   194,   195,
      41,   183,   108,   -72,   186,    42,    69,   178,   182,    41,
     184,    37,    50,    51,    42,    51,   212,   213,   214,   215,
      70,   117,    81,    81,    51,   -70,   131,   105,    51,    71,
      51,   117,    51,   203,   -72,   178,   199,   162,   116,   207,
      51,   209,   210,   -72,   -70,    23,    24,    26,    28,    38,
      39,   173,    33,    35,    51,    43,   223,   -72,   225,   219,
     221,   178,   182,   227,   138,   139,   140,   141,     4,   119,
      38,    39,   120,   154,    72,    51,    74,   211,   122,    51,
      76,   231,   147,    60,   234,   235,   185,    51,   237,    89,
      93,    94,   216,   224,    51,    51,    97,    97,    97,    97,
      24,    51,   200,    26,     4,   230,    24,    51,     5,   121,
     113,   114,   157,   158,    31,    32,   159,   160,   132,    60,
      63,   148,   149,     6,     7,     8,     9,    10,   125,   169,
     170,    11,   171,   172,    12,     4,   189,   187,    13,     5,
     188,   -70,    14,   201,   202,   146,   206,   217,    81,   228,
     208,   229,   151,   232,     6,     7,     8,     9,    10,   198,
       4,   233,    11,   236,     5,    12,    68,   222,   106,    13,
       0,   152,   168,    14,     0,    80,     0,     0,    51,     6,
       7,     8,     9,    10,     0,     4,     0,    11,   177,     5,
      12,     0,     0,     0,    13,     0,     0,     0,    14,     0,
       0,     0,   191,    51,     6,     7,     8,     9,    10,     0,
       0,     0,    11,   197,     0,    12,   177,     0,     0,    13,
       0,     0,     0,    14,     4,   205,     0,    60,     5,     0,
       0,     0,    97,    97,    97,    97,     0,     0,     0,     0,
     218,   220,   177,     6,     7,     8,     9,    10,   226,     2,
       3,    11,     4,     0,    12,     0,     5,     0,    13,     0,
       0,     0,    14,     0,     0,     0,    63,     0,     0,     0,
       0,     6,     7,     8,     9,    10,     4,     0,     0,    11,
       5,     0,    12,     0,     0,     0,    13,     0,     0,     0,
      14,     0,     0,     0,     0,     6,     7,     8,     9,    10,
       0,     0,     0,    11,     0,     0,    12,     0,     0,     0,
      13,     0,     0,     0,    14
};

static const yytype_int16 yycheck[] =
{
      18,    19,    20,    21,    15,    15,    19,    25,     4,    27,
      28,    57,    58,    59,    40,    16,     3,    35,     3,     4,
       5,     6,     3,     4,     5,     6,    36,     3,     3,    40,
      40,    41,    17,    18,    47,    48,    17,    18,    49,    49,
       3,     3,     4,     5,     6,    46,     3,    43,     3,    67,
      68,    36,    48,     5,     6,    17,    18,    44,    43,    69,
      49,    50,    43,    48,     3,     3,     4,    48,    86,    44,
      81,    44,    90,    46,     3,     4,     5,     6,    89,     3,
      43,    43,   100,   101,   102,   103,    48,    44,    17,    18,
       3,     4,     5,     6,    46,   113,    46,   115,   116,     3,
       4,     5,     6,    16,    43,    43,   124,    43,   126,   127,
      48,   129,   130,   131,    43,    16,    19,    31,    10,    48,
      44,    13,    14,    15,    10,    19,    60,    13,    14,    15,
      43,   149,    66,    47,   152,    48,    42,   148,   148,    43,
     150,     4,    43,    46,    48,    46,   192,   193,   194,   195,
      34,    44,    47,    47,    46,    48,    44,    36,    46,    43,
      46,    44,    46,   181,    47,   176,   176,    43,    38,   187,
      46,   189,   190,    47,    48,     5,     6,     7,     8,     5,
       6,    43,    12,    13,    46,    15,   204,    47,   206,   200,
     201,   202,   202,   211,    96,    97,    98,    99,     3,    48,
       5,     6,    47,    44,    34,    46,    36,    44,    50,    46,
      40,   229,    44,    45,   232,   233,    45,    46,   236,    49,
      50,    51,    44,    44,    46,    46,    56,    57,    58,    59,
      60,    46,    47,    63,     3,    44,    66,    46,     7,    49,
      70,    71,   119,   120,    10,    11,   121,   122,    19,    45,
      45,    27,    27,    22,    23,    24,    25,    26,    88,     9,
       9,    30,     9,     9,    33,     3,    38,    35,    37,     7,
      34,    48,    41,    47,    47,   105,    35,    44,    47,    32,
      43,    39,   112,    39,    22,    23,    24,    25,    26,   176,
       3,    35,    30,    35,     7,    33,    31,   202,    63,    37,
      -1,    39,   132,    41,    -1,    42,    -1,    -1,    46,    22,
      23,    24,    25,    26,    -1,     3,    -1,    30,   148,     7,
      33,    -1,    -1,    -1,    37,    -1,    -1,    -1,    41,    -1,
      -1,    -1,   162,    46,    22,    23,    24,    25,    26,    -1,
      -1,    -1,    30,   173,    -1,    33,   176,    -1,    -1,    37,
      -1,    -1,    -1,    41,     3,   185,    -1,    45,     7,    -1,
      -1,    -1,   192,   193,   194,   195,    -1,    -1,    -1,    -1,
     200,   201,   202,    22,    23,    24,    25,    26,   208,     0,
       1,    30,     3,    -1,    33,    -1,     7,    -1,    37,    -1,
      -1,    -1,    41,    -1,    -1,    -1,    45,    -1,    -1,    -1,
      -1,    22,    23,    24,    25,    26,     3,    -1,    -1,    30,
       7,    -1,    33,    -1,    -1,    -1,    37,    -1,    -1,    -1,
      41,    -1,    -1,    -1,    -1,    22,    23,    24,    25,    26,
      -1,    -1,    -1,    30,    -1,    -1,    33,    -1,    -1,    -1,
      37,    -1,    -1,    -1,    41
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    52,     0,     1,     3,     7,    22,    23,    24,    25,
      26,    30,    33,    37,    41,    53,    54,    60,    83,    84,
      85,    86,    87,    60,    60,    62,    60,    61,    60,     3,
      76,    76,    76,    60,    43,    60,    40,     4,     5,     6,
      16,    43,    48,    60,    64,    68,    71,    74,    75,    16,
      43,    46,    54,    54,    54,    54,    10,    13,    14,    15,
      45,    54,    16,    45,    54,    54,    43,    63,    63,    42,
      34,    43,    60,    54,    60,    68,    60,    64,    68,    68,
      75,    47,    69,    70,    72,    73,    17,    18,    36,    60,
      64,    68,    44,    60,    60,    17,    18,    60,    64,    68,
      82,    82,    82,    82,    62,    36,    61,    44,    62,    54,
      54,    68,    43,    60,    60,    44,    38,    44,    64,    48,
      47,    49,    50,    54,    58,    60,    57,    64,    54,    55,
      59,    44,    19,    77,    78,    79,    80,    81,    81,    81,
      81,    81,    54,    54,    54,    54,    60,    44,    27,    27,
      31,    60,    39,    54,    44,    54,    54,    71,    71,    74,
      74,    54,    43,    54,    54,    54,    54,    54,    60,     9,
       9,     9,     9,    43,    17,    18,    43,    60,    64,    65,
      66,    67,    68,    54,    68,    45,    54,    35,    34,    38,
      44,    60,    10,    13,    14,    15,    44,    60,    66,    68,
      47,    47,    47,    54,    56,    60,    35,    54,    43,    54,
      54,    44,    82,    82,    82,    82,    44,    44,    60,    64,
      60,    64,    65,    54,    44,    54,    60,    54,    32,    39,
      44,    54,    39,    35,    54,    54,    35,    54
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    51,    52,    52,    52,    53,    53,    54,    55,    54,
      56,    54,    54,    54,    54,    54,    54,    54,    54,    54,
      54,    54,    54,    54,    54,    54,    54,    54,    54,    54,
      54,    54,    57,    54,    54,    54,    58,    54,    54,    59,
      54,    54,    60,    60,    61,    61,    61,    61,    62,    62,
      63,    63,    63,    64,    64,    64,    65,    65,    65,    65,
      65,    65,    65,    65,    65,    65,    66,    66,    67,    67,
      69,    68,    70,    68,    68,    72,    71,    73,    71,    71,
      74,    74,    74,    75,    76,    77,    78,    79,    80,    81,
      81,    81,    81,    81,    82,    82,    82,    82,    82,    83,
      84,    85,    86,    87,    87,    87,    87
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     2,     3,     3,     0,     0,     5,
       0,     9,     3,     3,     3,     2,     2,     2,    13,    12,
       8,     7,     3,     3,     3,     6,     7,     7,     5,     8,
       7,     5,     0,     5,     4,     4,     0,     5,     5,     0,
       5,     1,     1,     3,     7,     6,     1,     3,     1,     3,
       0,     3,     2,     1,     1,     3,     0,     3,     3,     3,
       3,     1,     1,     1,     1,     1,     1,     3,     3,     1,
       0,     4,     0,     4,     1,     0,     4,     0,     4,     1,
       1,     2,     3,     1,     1,     4,     4,     4,     4,     0,
       1,     1,     1,     1,     2,     2,     2,     2,     2,     6,
       6,     6,     6,     2,     2,     2,     2
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
#line 76 "assemblerDSLwin32.y"
                      { }
#line 1377 "assemblerDSLwin32.tab.c"
    break;

  case 3: /* program: program stmt  */
#line 77 "assemblerDSLwin32.y"
                       { }
#line 1383 "assemblerDSLwin32.tab.c"
    break;

  case 4: /* program: program error  */
#line 78 "assemblerDSLwin32.y"
                        {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
#line 1394 "assemblerDSLwin32.tab.c"
    break;

  case 7: /* stmt: %empty  */
#line 92 "assemblerDSLwin32.y"
                            { }
#line 1400 "assemblerDSLwin32.tab.c"
    break;

  case 8: /* $@1: %empty  */
#line 94 "assemblerDSLwin32.y"
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
#line 1436 "assemblerDSLwin32.tab.c"
    break;

  case 10: /* $@2: %empty  */
#line 125 "assemblerDSLwin32.y"
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
#line 1457 "assemblerDSLwin32.tab.c"
    break;

  case 11: /* stmt: TOK_FOR ident '=' expr TOK_TO expr $@2 stmt TOK_ENDFOR  */
#line 140 "assemblerDSLwin32.y"
                                {
		node_new = (struct node *) malloc( sizeof( struct node ) );
		node_new->token = (char *) malloc( 12 );
		
		strcpy(node_new->token, "forend");
		node_new->token_id = (yyvsp[-8].node_and_value).node_for->token_id;
		
		node_new->prev = (yyvsp[-8].node_and_value).node_for;
		node_new->next = NULL;
		node_prev      = node_new;
	}
#line 1473 "assemblerDSLwin32.tab.c"
    break;

  case 12: /* stmt: define_macro TOK_ASSIGN ident_object  */
#line 151 "assemblerDSLwin32.y"
                                                     { }
#line 1479 "assemblerDSLwin32.tab.c"
    break;

  case 13: /* stmt: define_macro TOK_ASSIGN ident_string  */
#line 152 "assemblerDSLwin32.y"
                                                     { }
#line 1485 "assemblerDSLwin32.tab.c"
    break;

  case 14: /* stmt: define_macro TOK_ASSIGN expr  */
#line 153 "assemblerDSLwin32.y"
                                                     { }
#line 1491 "assemblerDSLwin32.tab.c"
    break;

  case 15: /* stmt: define_macro ident_object  */
#line 154 "assemblerDSLwin32.y"
                                                     { }
#line 1497 "assemblerDSLwin32.tab.c"
    break;

  case 16: /* stmt: define_macro ident_string  */
#line 155 "assemblerDSLwin32.y"
                                                     { }
#line 1503 "assemblerDSLwin32.tab.c"
    break;

  case 17: /* stmt: define_macro expr  */
#line 156 "assemblerDSLwin32.y"
                                                     {
	}
#line 1510 "assemblerDSLwin32.tab.c"
    break;

  case 21: /* stmt: TOK_CLASS ident_object TOK_OF ident_object stmt TOK_ENDCLASS stmt  */
#line 161 "assemblerDSLwin32.y"
                                                                                                                                               {
	}
#line 1517 "assemblerDSLwin32.tab.c"
    break;

  case 22: /* stmt: TOK_LOCAL local_object stmt  */
#line 163 "assemblerDSLwin32.y"
                                                      {
	}
#line 1524 "assemblerDSLwin32.tab.c"
    break;

  case 23: /* stmt: TOK_PRIVATE ident_object stmt  */
#line 165 "assemblerDSLwin32.y"
                                                      { }
#line 1530 "assemblerDSLwin32.tab.c"
    break;

  case 24: /* stmt: TOK_PARAMETER param_object stmt  */
#line 166 "assemblerDSLwin32.y"
                                                      {
	}
#line 1537 "assemblerDSLwin32.tab.c"
    break;

  case 26: /* stmt: TOK_FUNCTION ident args_param stmt TOK_RETURN return_value stmt  */
#line 169 "assemblerDSLwin32.y"
                                                                                        {
	}
#line 1544 "assemblerDSLwin32.tab.c"
    break;

  case 28: /* stmt: TOK_WITH ident_object stmt TOK_ENDWITH stmt  */
#line 172 "assemblerDSLwin32.y"
                                                                        {
	}
#line 1551 "assemblerDSLwin32.tab.c"
    break;

  case 30: /* stmt: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')' stmt  */
#line 175 "assemblerDSLwin32.y"
                                                                                        {
	}
#line 1558 "assemblerDSLwin32.tab.c"
    break;

  case 32: /* $@3: %empty  */
#line 178 "assemblerDSLwin32.y"
                                                      { }
#line 1564 "assemblerDSLwin32.tab.c"
    break;

  case 36: /* $@4: %empty  */
#line 181 "assemblerDSLwin32.y"
                                                               { }
#line 1570 "assemblerDSLwin32.tab.c"
    break;

  case 39: /* $@5: %empty  */
#line 183 "assemblerDSLwin32.y"
                                                               { }
#line 1576 "assemblerDSLwin32.tab.c"
    break;

  case 58: /* return_merge: ident_object '+' ident_string  */
#line 219 "assemblerDSLwin32.y"
                                          {
	}
#line 1583 "assemblerDSLwin32.tab.c"
    break;

  case 60: /* return_merge: ident_string '+' ident_object  */
#line 222 "assemblerDSLwin32.y"
                                              {
	}
#line 1590 "assemblerDSLwin32.tab.c"
    break;

  case 62: /* return_merge: ident_string  */
#line 225 "assemblerDSLwin32.y"
                             {
	}
#line 1597 "assemblerDSLwin32.tab.c"
    break;

  case 70: /* $@6: %empty  */
#line 242 "assemblerDSLwin32.y"
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
#line 1618 "assemblerDSLwin32.tab.c"
    break;

  case 71: /* expr: expr $@6 '-' term  */
#line 259 "assemblerDSLwin32.y"
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
#line 1640 "assemblerDSLwin32.tab.c"
    break;

  case 72: /* $@7: %empty  */
#line 277 "assemblerDSLwin32.y"
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
#line 1661 "assemblerDSLwin32.tab.c"
    break;

  case 73: /* expr: expr $@7 '+' term  */
#line 294 "assemblerDSLwin32.y"
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
#line 1683 "assemblerDSLwin32.tab.c"
    break;

  case 74: /* expr: term  */
#line 312 "assemblerDSLwin32.y"
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
#line 1705 "assemblerDSLwin32.tab.c"
    break;

  case 75: /* $@8: %empty  */
#line 333 "assemblerDSLwin32.y"
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
#line 1726 "assemblerDSLwin32.tab.c"
    break;

  case 76: /* term: term $@8 '*' factor  */
#line 350 "assemblerDSLwin32.y"
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
#line 1748 "assemblerDSLwin32.tab.c"
    break;

  case 77: /* $@9: %empty  */
#line 368 "assemblerDSLwin32.y"
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
#line 1769 "assemblerDSLwin32.tab.c"
    break;

  case 78: /* term: term $@9 '/' factor  */
#line 385 "assemblerDSLwin32.y"
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
#line 1791 "assemblerDSLwin32.tab.c"
    break;

  case 79: /* term: factor  */
#line 403 "assemblerDSLwin32.y"
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
#line 1813 "assemblerDSLwin32.tab.c"
    break;

  case 80: /* factor: number  */
#line 424 "assemblerDSLwin32.y"
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
#line 1835 "assemblerDSLwin32.tab.c"
    break;

  case 81: /* factor: '-' number  */
#line 442 "assemblerDSLwin32.y"
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
#line 1857 "assemblerDSLwin32.tab.c"
    break;

  case 82: /* factor: '(' expr ')'  */
#line 460 "assemblerDSLwin32.y"
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
#line 1879 "assemblerDSLwin32.tab.c"
    break;

  case 83: /* number: TOK_NUMBER  */
#line 481 "assemblerDSLwin32.y"
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
#line 1901 "assemblerDSLwin32.tab.c"
    break;

  case 84: /* ident: TOK_ID  */
#line 502 "assemblerDSLwin32.y"
        {
		// -------------------------
		// add a ident node to tree
		// -------------------------
		node_new = (struct node *) malloc( sizeof( struct node )    );

		node_new->token = (char *) malloc( strlen( (yyvsp[0].node_and_value).name     ) + 1);
		(yyval.node_and_value).name         = (char *) malloc( strlen( (yyvsp[0].node_and_value).name     ) + 1);
		strcpy((yyval.node_and_value).name, (yyvsp[0].node_and_value).name );

		node_new->token_id = tt_const_ident;
		strcpy(node_new->token, (yyvsp[0].node_and_value).name );
		
		node_new->prev  = node_prev;
		node_new->next  = NULL;
		
		node_prev = node_new;
	}
#line 1924 "assemblerDSLwin32.tab.c"
    break;

  case 103: /* if_else_endif: if_ident_eqeq stmt  */
#line 549 "assemblerDSLwin32.y"
                                   { }
#line 1930 "assemblerDSLwin32.tab.c"
    break;

  case 104: /* if_else_endif: if_ident_lteq stmt  */
#line 550 "assemblerDSLwin32.y"
                                   { }
#line 1936 "assemblerDSLwin32.tab.c"
    break;

  case 105: /* if_else_endif: if_ident_gteq stmt  */
#line 551 "assemblerDSLwin32.y"
                                   { }
#line 1942 "assemblerDSLwin32.tab.c"
    break;

  case 106: /* if_else_endif: if_ident_ltgt stmt  */
#line 552 "assemblerDSLwin32.y"
                                   { }
#line 1948 "assemblerDSLwin32.tab.c"
    break;


#line 1952 "assemblerDSLwin32.tab.c"

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

#line 555 "assemblerDSLwin32.y"


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
					sprintf(buffer,"detected ident: %s",
					ptr->token);
				break;
				
				case tt_const_number:
					sprintf(buffer,"fetch number: %f",
					ptr->value);
				break;
				
				case tt_factor_neg:
					sprintf(buffer,"negate number factor: %f",
					ptr->value);
				break;
				
				case tt_factor_term:
					sprintf(buffer,"term factor:  %f ",
					ptr->value);
				break;
				
				case tt_factor_paren:
					sprintf(buffer,"parens number factor: ( %f )",
					ptr->value);
				break;
				
				case tt_factor_number:
					sprintf(buffer,"simple factor number");
				break;
				
				case tt_term:    break;
				case tt_factor:  break;
				
				case tt_expr_sub: sprintf(buffer, "expr sub" ); break;
				case tt_expr_add: sprintf(buffer, "expr add" ); break;
				case tt_expr_mul: sprintf(buffer, "expr mul" ); break;
				case tt_expr_div: sprintf(buffer, "expr div" ); break;
				
				case tt_term_sub: sprintf(buffer, "term sub" ); break;
				case tt_term_add: sprintf(buffer, "term add" ); break;
				case tt_term_mul: sprintf(buffer, "term mul" ); break;
				case tt_term_div: sprintf(buffer, "term div" ); break;

				case tt_factor_sub: sprintf(buffer, "factor sub" ); break;
				case tt_factor_add: sprintf(buffer, "factor add" ); break;
				case tt_factor_mul: sprintf(buffer, "factor mul" ); break;
				case tt_factor_div: sprintf(buffer, "factor div" ); break;
				
				case tt_ident_assign:
					sprintf(buffer,"assign to: '%s' := %f",
						ptr->token,
						ptr->value
					);
				break;
				
				default:
					sprintf(buffer,"error on fetch type");
				break;
			}	MessageBoxA(0,buffer,"DebugInfo",0);
		}
		node_prev = ptr->prev;
		ptr       = ptr->prev;
	}
	
	free(buffer);
}
