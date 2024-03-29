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
#line 1 "assemblerDSLdos32.y"

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

#line 106 "assemblerDSLdos32.tab.c"

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

#include "assemblerDSLdos32.tab.h"
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
  YYSYMBOL_TOK_LABEL = 6,                  /* TOK_LABEL  */
  YYSYMBOL_TOK_EQEQ = 7,                   /* TOK_EQEQ  */
  YYSYMBOL_TOK_EQLT = 8,                   /* TOK_EQLT  */
  YYSYMBOL_TOK_EQGT = 9,                   /* TOK_EQGT  */
  YYSYMBOL_TOK_GTEQ = 10,                  /* TOK_GTEQ  */
  YYSYMBOL_TOK_LTEQ = 11,                  /* TOK_LTEQ  */
  YYSYMBOL_TOK_LTGT = 12,                  /* TOK_LTGT  */
  YYSYMBOL_TOK_ASSIGN = 13,                /* TOK_ASSIGN  */
  YYSYMBOL_TOK_FALSE = 14,                 /* TOK_FALSE  */
  YYSYMBOL_TOK_TRUE = 15,                  /* TOK_TRUE  */
  YYSYMBOL_TOK_AND = 16,                   /* TOK_AND  */
  YYSYMBOL_TOK_NOT = 17,                   /* TOK_NOT  */
  YYSYMBOL_TOK_OR = 18,                    /* TOK_OR  */
  YYSYMBOL_TOK_XOR = 19,                   /* TOK_XOR  */
  YYSYMBOL_TOK_NEG = 20,                   /* TOK_NEG  */
  YYSYMBOL_TOK_SHL = 21,                   /* TOK_SHL  */
  YYSYMBOL_TOK_SHR = 22,                   /* TOK_SHR  */
  YYSYMBOL_TOK_JE = 23,                    /* TOK_JE  */
  YYSYMBOL_TOK_JNE = 24,                   /* TOK_JNE  */
  YYSYMBOL_TOK_JZ = 25,                    /* TOK_JZ  */
  YYSYMBOL_TOK_JG = 26,                    /* TOK_JG  */
  YYSYMBOL_TOK_JGE = 27,                   /* TOK_JGE  */
  YYSYMBOL_TOK_JL = 28,                    /* TOK_JL  */
  YYSYMBOL_TOK_JLE = 29,                   /* TOK_JLE  */
  YYSYMBOL_TOK_AAA = 30,                   /* TOK_AAA  */
  YYSYMBOL_TOK_ADD = 31,                   /* TOK_ADD  */
  YYSYMBOL_TOK_DEC = 32,                   /* TOK_DEC  */
  YYSYMBOL_TOK_INC = 33,                   /* TOK_INC  */
  YYSYMBOL_TOK_IMUL = 34,                  /* TOK_IMUL  */
  YYSYMBOL_TOK_IDIV = 35,                  /* TOK_IDIV  */
  YYSYMBOL_TOK_LEA = 36,                   /* TOK_LEA  */
  YYSYMBOL_TOK_MOV = 37,                   /* TOK_MOV  */
  YYSYMBOL_TOK_POP = 38,                   /* TOK_POP  */
  YYSYMBOL_TOK_PUSH = 39,                  /* TOK_PUSH  */
  YYSYMBOL_TOK_RET = 40,                   /* TOK_RET  */
  YYSYMBOL_TOK_SUB = 41,                   /* TOK_SUB  */
  YYSYMBOL_TOK_EAX = 42,                   /* TOK_EAX  */
  YYSYMBOL_TOK_EBP = 43,                   /* TOK_EBP  */
  YYSYMBOL_TOK_EBX = 44,                   /* TOK_EBX  */
  YYSYMBOL_TOK_ECX = 45,                   /* TOK_ECX  */
  YYSYMBOL_TOK_EDI = 46,                   /* TOK_EDI  */
  YYSYMBOL_TOK_EDX = 47,                   /* TOK_EDX  */
  YYSYMBOL_TOK_EIP = 48,                   /* TOK_EIP  */
  YYSYMBOL_TOK_ESI = 49,                   /* TOK_ESI  */
  YYSYMBOL_TOK_ESP = 50,                   /* TOK_ESP  */
  YYSYMBOL_TOK_AX = 51,                    /* TOK_AX  */
  YYSYMBOL_TOK_BP = 52,                    /* TOK_BP  */
  YYSYMBOL_TOK_BX = 53,                    /* TOK_BX  */
  YYSYMBOL_TOK_CX = 54,                    /* TOK_CX  */
  YYSYMBOL_TOK_DX = 55,                    /* TOK_DX  */
  YYSYMBOL_TOK_AH = 56,                    /* TOK_AH  */
  YYSYMBOL_TOK_BH = 57,                    /* TOK_BH  */
  YYSYMBOL_TOK_CH = 58,                    /* TOK_CH  */
  YYSYMBOL_TOK_DH = 59,                    /* TOK_DH  */
  YYSYMBOL_TOK_AL = 60,                    /* TOK_AL  */
  YYSYMBOL_TOK_BL = 61,                    /* TOK_BL  */
  YYSYMBOL_TOK_CL = 62,                    /* TOK_CL  */
  YYSYMBOL_TOK_DL = 63,                    /* TOK_DL  */
  YYSYMBOL_TOK_IP = 64,                    /* TOK_IP  */
  YYSYMBOL_TOK_SP = 65,                    /* TOK_SP  */
  YYSYMBOL_TOK_DI = 66,                    /* TOK_DI  */
  YYSYMBOL_TOK_SI = 67,                    /* TOK_SI  */
  YYSYMBOL_TOK_DWORD = 68,                 /* TOK_DWORD  */
  YYSYMBOL_TOK_WORD = 69,                  /* TOK_WORD  */
  YYSYMBOL_TOK_BYTE = 70,                  /* TOK_BYTE  */
  YYSYMBOL_TOK_PTR = 71,                   /* TOK_PTR  */
  YYSYMBOL_72_ = 72,                       /* ','  */
  YYSYMBOL_73_ = 73,                       /* '['  */
  YYSYMBOL_74_ = 74,                       /* ']'  */
  YYSYMBOL_75_ = 75,                       /* '+'  */
  YYSYMBOL_76_ = 76,                       /* '-'  */
  YYSYMBOL_77_ = 77,                       /* '*'  */
  YYSYMBOL_78_ = 78,                       /* '/'  */
  YYSYMBOL_79_ = 79,                       /* '('  */
  YYSYMBOL_80_ = 80,                       /* ')'  */
  YYSYMBOL_YYACCEPT = 81,                  /* $accept  */
  YYSYMBOL_program = 82,                   /* program  */
  YYSYMBOL_stmt = 83,                      /* stmt  */
  YYSYMBOL_jump_label = 84,                /* jump_label  */
  YYSYMBOL_con = 85,                       /* con  */
  YYSYMBOL_reg = 86,                       /* reg  */
  YYSYMBOL_mem = 87,                       /* mem  */
  YYSYMBOL_mem16 = 88,                     /* mem16  */
  YYSYMBOL_mem32 = 89,                     /* mem32  */
  YYSYMBOL_regSeq32 = 90,                  /* regSeq32  */
  YYSYMBOL_regSeq16 = 91,                  /* regSeq16  */
  YYSYMBOL_regSeq8 = 92,                   /* regSeq8  */
  YYSYMBOL_reg8 = 93,                      /* reg8  */
  YYSYMBOL_reg8L = 94,                     /* reg8L  */
  YYSYMBOL_reg8H = 95,                     /* reg8H  */
  YYSYMBOL_reg16 = 96,                     /* reg16  */
  YYSYMBOL_reg32 = 97,                     /* reg32  */
  YYSYMBOL_expr = 98,                      /* expr  */
  YYSYMBOL_term = 99,                      /* term  */
  YYSYMBOL_factor = 100,                   /* factor  */
  YYSYMBOL_number = 101,                   /* number  */
  YYSYMBOL_ident = 102                     /* ident  */
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
typedef yytype_int16 yy_state_t;

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
#define YYLAST   934

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  81
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  22
/* YYNRULES -- Number of rules.  */
#define YYNRULES  160
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  349

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   326


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
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
      79,    80,    77,    75,    72,    76,     2,    78,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    73,     2,    74,     2,     2,     2,     2,     2,     2,
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
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   127,   127,   128,   129,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,   149,   150,   152,   153,   155,
     156,   158,   159,   162,   163,   164,   165,   166,   168,   169,
     170,   171,   173,   174,   175,   176,   178,   179,   180,   181,
     182,   184,   185,   186,   187,   188,   190,   191,   192,   193,
     194,   196,   197,   198,   199,   200,   202,   203,   205,   206,
     207,   208,   210,   211,   213,   214,   216,   217,   219,   220,
     221,   222,   223,   225,   226,   228,   229,   231,   232,   233,
     235,   237,   238,   239,   240,   241,   243,   245,   249,   250,
     251,   252,   253,   254,   255,   259,   260,   264,   265,   266,
     267,   271,   272,   276,   277,   279,   280,   282,   283,   288,
     289,   291,   292,   294,   295,   297,   298,   303,   304,   305,
     309,   310,   311,   312,   313,   317,   318,   322,   323,   327,
     328,   329,   330,   334,   335,   336,   337,   341,   342,   343,
     344,   345,   346,   348,   352,   353,   354,   355,   356,   360,
     361,   362,   366,   367,   368,   372,   373,   374,   378,   379,
     383
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
  "TOK_STRING", "TOK_LABEL", "TOK_EQEQ", "TOK_EQLT", "TOK_EQGT",
  "TOK_GTEQ", "TOK_LTEQ", "TOK_LTGT", "TOK_ASSIGN", "TOK_FALSE",
  "TOK_TRUE", "TOK_AND", "TOK_NOT", "TOK_OR", "TOK_XOR", "TOK_NEG",
  "TOK_SHL", "TOK_SHR", "TOK_JE", "TOK_JNE", "TOK_JZ", "TOK_JG", "TOK_JGE",
  "TOK_JL", "TOK_JLE", "TOK_AAA", "TOK_ADD", "TOK_DEC", "TOK_INC",
  "TOK_IMUL", "TOK_IDIV", "TOK_LEA", "TOK_MOV", "TOK_POP", "TOK_PUSH",
  "TOK_RET", "TOK_SUB", "TOK_EAX", "TOK_EBP", "TOK_EBX", "TOK_ECX",
  "TOK_EDI", "TOK_EDX", "TOK_EIP", "TOK_ESI", "TOK_ESP", "TOK_AX",
  "TOK_BP", "TOK_BX", "TOK_CX", "TOK_DX", "TOK_AH", "TOK_BH", "TOK_CH",
  "TOK_DH", "TOK_AL", "TOK_BL", "TOK_CL", "TOK_DL", "TOK_IP", "TOK_SP",
  "TOK_DI", "TOK_SI", "TOK_DWORD", "TOK_WORD", "TOK_BYTE", "TOK_PTR",
  "','", "'['", "']'", "'+'", "'-'", "'*'", "'/'", "'('", "')'", "$accept",
  "program", "stmt", "jump_label", "con", "reg", "mem", "mem16", "mem32",
  "regSeq32", "regSeq16", "regSeq8", "reg8", "reg8L", "reg8H", "reg16",
  "reg32", "expr", "term", "factor", "number", "ident", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-168)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-160)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    -168,   782,  -168,  -168,  -168,   861,   861,   861,   861,   861,
     861,   861,  -168,  -168,  -168,  -168,  -168,  -168,  -168,   609,
     861,   861,   861,   -29,   436,   609,   861,   861,   398,   860,
     861,  -168,    16,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,   -68,   -64,   -36,   516,   -49,    -4,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,     5,    10,    17,    23,    31,
      33,   860,   860,    51,    73,    75,    81,    83,    87,    89,
      93,   104,   108,   860,   860,   860,   860,   111,   860,   860,
    -168,  -168,   117,   124,   129,   134,   860,   860,  -168,  -168,
       8,   163,   860,   860,   860,   -22,   -18,  -168,  -168,    94,
    -168,   135,   136,   860,   -45,   516,    76,   543,   147,   326,
     148,   149,   -33,  -168,   398,   516,   398,   516,   398,   516,
     398,   516,  -168,  -168,   174,   178,   245,   400,    18,   187,
     543,   516,   398,   516,  -168,  -168,  -168,  -168,   436,  -168,
    -168,   -44,   -37,   398,   516,  -168,  -168,  -168,   -14,  -168,
    -168,  -168,   163,   163,   163,   163,   398,   516,  -168,   516,
    -168,    37,   -22,   543,    43,  -168,  -168,  -168,   -22,   326,
     150,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,   860,   607,   824,   860,   607,   824,
     860,   860,   860,   607,   824,   860,   860,   860,   860,   607,
     824,   860,   860,   860,   860,   860,   668,   725,    -6,    12,
     543,   860,    20,    28,   516,   860,   860,   860,   860,   860,
     860,  -168,   -18,   -18,  -168,  -168,   860,   860,   860,   860,
     860,    53,  -168,   516,    66,  -168,   543,   152,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,
    -168,   163,  -168,   163,  -168,   155,   543,   157,   326,   149,
      -3,  -168,   158,   543,   160,   326,    61,  -168,  -168,  -168,
    -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,  -168,   159,
    -168,   162,  -168,   860,   860,   543,    77,   326,   182,  -168,
     543,   100,   326,   184,  -168,  -168,  -168,   113,  -168,   185,
    -168,   118,  -168,   186,  -168,  -168,  -168,  -168,  -168
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       2,     0,     1,     4,    87,     0,     0,     0,     0,     0,
       0,     0,    88,    89,    90,    91,    92,    93,    94,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     5,
       0,     3,     0,   144,   145,   146,   148,   147,   137,   138,
     139,   140,   133,   134,   135,   136,   129,   130,   131,   132,
     141,   142,     0,     0,     0,     0,     0,     0,   101,   102,
     143,    97,    98,    99,   100,     0,     0,     0,     0,     0,
       0,     5,     5,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     5,     5,     5,     5,     0,     5,     5,
     127,   128,     0,     0,     0,     0,     5,     5,   160,   158,
       0,     0,     5,     5,     5,    95,   151,   154,   155,    96,
      80,     0,     0,     5,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   159,     0,     0,     0,     0,     0,     0,
       0,     0,    73,    74,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    56,    57,    64,    65,     0,    63,
      62,     0,     0,     0,     0,    75,    76,   156,     0,    79,
      77,    78,     0,     0,     0,     0,     0,     0,    86,     0,
     117,     0,   118,     0,     0,   122,   121,   120,   123,     0,
       0,   125,   126,   109,   103,   104,    39,    36,    37,    40,
      38,    44,    41,    42,    45,    43,    54,    51,    52,    55,
      53,    49,    46,    47,    50,    48,    30,    28,    31,    29,
      34,    32,    35,    33,     5,     5,   159,     5,     5,   159,
       5,     5,     5,     5,   159,     5,     5,     5,     5,     5,
     159,     5,     5,     5,     5,     5,     5,     5,     0,     0,
       0,     5,     0,     0,     0,     5,     5,     5,     5,     5,
       5,   157,   150,   149,   152,   153,     5,     5,     5,     5,
       5,     0,   112,     0,     0,   106,     0,     0,   108,    14,
      15,    16,    13,    17,    18,    12,    11,    10,    19,    20,
       9,     8,     7,     6,    21,    22,    26,    23,    24,    27,
      25,     0,    59,     0,    58,     0,     0,     0,     0,     0,
       0,    66,     0,     0,     0,     0,     0,    67,    71,    68,
      69,    72,    70,    84,    81,    82,    85,    83,   111,   119,
     105,   124,   107,     5,     5,     0,     0,     0,     0,   104,
       0,     0,     0,     0,   110,    61,    60,     0,   106,     0,
     108,     0,   114,     0,   116,   105,   107,   113,   115
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -168,  -168,   114,  -168,   -79,   370,   402,   101,   109,  -167,
    -146,  -159,  -168,   -19,   -15,   -11,    15,   -25,    32,    40,
     164,   -31
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     1,    31,    32,   102,   170,    57,    58,    59,   171,
     174,   180,    60,    61,    62,    63,    64,   105,   106,   107,
     108,   109
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      77,   113,   261,   114,    78,   115,    90,   116,    79,   117,
      91,    98,    99,    33,    92,    34,    35,    36,    37,    98,
     267,    98,    99,   124,   123,   238,   239,   264,   169,   240,
     122,    52,   242,   243,    80,   118,   244,   119,    87,    89,
      93,   185,   162,   163,   121,   186,   189,   191,   194,   196,
     199,   201,   204,   162,   163,   207,   209,   211,   213,   164,
     165,   162,   163,   231,   234,   295,   251,   296,   125,   123,
     123,   329,   162,   163,   246,   249,   158,   126,    46,    47,
      48,    49,   127,   297,   123,   298,   123,   256,   259,   128,
     172,   302,   178,   303,   100,   129,   319,   101,   175,   304,
     181,   305,   176,   130,   182,   131,   177,   216,   219,   224,
     230,   262,   263,   215,   218,   223,   229,   265,   266,   214,
     321,   220,   225,   134,   217,   221,   226,   318,   263,   222,
     227,   123,   123,   123,   123,   334,   162,   163,   123,   328,
     320,   266,   123,   110,   172,   135,   333,   136,   178,   173,
     326,   338,   266,   137,   175,   138,   228,   331,   176,   139,
     181,   140,   177,   237,   182,   141,    98,    99,   339,  -159,
    -159,  -159,  -159,   343,   342,   266,   142,    98,    99,   337,
     143,    98,    99,   148,   341,   132,   133,   345,   266,   151,
      98,    99,   347,   266,   252,   253,   152,   144,   145,   146,
     147,   153,   149,   150,   254,   255,   154,   166,   167,   123,
     155,   156,   323,   123,   324,   300,   159,   160,   161,   306,
     179,    90,   183,   184,   268,    91,   322,   168,   325,   299,
     327,   330,   123,   332,   263,   123,   206,   266,   172,   100,
     208,   178,   101,    42,    43,    44,    45,   175,    98,    99,
     100,   176,   241,   101,   100,   177,   340,   101,   344,   346,
     348,   245,     0,   100,   157,   123,   101,     0,     0,     0,
       0,   178,   123,     0,     0,     0,     0,   175,   178,   181,
       0,   176,     0,   182,   175,   177,   181,     0,   176,     0,
     182,     0,   177,     0,   123,     0,     0,     0,     0,   123,
     178,     0,     0,     0,     0,   178,   175,   210,   181,     0,
     176,   175,   182,   181,   177,   176,     0,   182,     0,   177,
       0,   100,     0,     0,   101,     0,     0,     0,   269,   270,
     271,   272,   273,   274,   275,   276,   277,   278,   279,   280,
     281,   282,   283,   284,   285,   286,   287,   288,   289,   290,
     292,   294,     0,     0,     0,   301,     0,     0,     0,   307,
     308,   309,   310,   311,   312,     0,     0,     0,     0,     0,
     313,   314,   315,   316,   317,    56,    65,    67,    69,    71,
      73,    75,    42,    43,    44,    45,    46,    47,    48,    49,
      81,    83,    85,     0,     0,     0,    94,    96,   103,     0,
     111,    98,    99,    98,    99,     0,     0,     0,    66,    68,
      70,    72,    74,    76,     0,     0,     0,     0,     0,     0,
       0,     0,    82,    84,    86,   120,    88,     0,    95,    97,
     104,     0,   112,     0,     0,     0,     0,   335,   336,     0,
      33,     0,    34,    35,    36,    37,     0,     0,     0,    38,
       0,    39,    40,    41,    42,    43,    44,    45,    46,    47,
      48,    49,   212,     0,    50,    51,    52,    53,    54,     0,
       0,    55,     0,     0,   100,     0,   100,   101,    33,   101,
      34,    35,    36,    37,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   187,   190,   192,   195,   197,   200,
     202,   205,     0,     0,    52,    53,    54,     0,     0,    55,
       0,     0,   232,   235,     0,     0,     0,     0,     0,    98,
      99,     0,     0,   247,   250,     0,   188,     0,   193,     0,
     198,     0,   203,     0,     0,     0,   257,   260,     0,     0,
       0,     0,     0,     0,   233,     0,    98,    99,     0,     0,
     236,     0,     0,     0,     0,   248,     0,     0,    33,     0,
      34,    35,    36,    37,     0,     0,     0,    38,   258,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    48,    49,
       0,     0,    50,    51,     0,     0,     0,     0,     0,     0,
       0,     0,   100,     0,    38,   101,    39,    40,    41,    42,
      43,    44,    45,    46,    47,    48,    49,     0,     0,    50,
      51,     0,     0,     4,   120,     0,     0,     0,     0,   100,
       0,     0,   101,     5,     6,     7,     8,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,     0,
       0,    33,     0,    34,    35,    36,    37,     0,     0,     0,
      38,     0,    39,    40,    41,    42,    43,    44,    45,    46,
      47,    48,    49,     0,     4,    50,    51,     0,     0,     0,
       0,     0,   162,   163,     5,     6,     7,     8,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     4,     0,     0,     0,     0,     0,     0,     0,     0,
     291,     5,     6,     7,     8,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    22,    23,
      24,    25,    26,    27,    28,    29,    30,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     2,     3,     0,     0,     0,     0,     4,     0,
       0,     0,     0,     0,     0,     0,     0,   293,     5,     6,
       7,     8,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    20,    21,    22,    23,    24,    25,    26,
      27,    28,    29,    30,    -5,    -5,     0,     0,     0,     0,
       4,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,     4,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     5,     6,     7,     8,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    20,    21,    22,    23,    24,    25,    26,    27,    28,
      29,    30,     0,    33,     0,    34,    35,    36,    37,     0,
       0,     0,    38,     0,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,     0,     0,    50,    51,    52,
      53,    54,     0,     0,    55
};

static const yytype_int16 yycheck[] =
{
      19,    32,   169,    71,    19,    73,    25,    71,    19,    73,
      25,     3,     4,    42,    25,    44,    45,    46,    47,     3,
     179,     3,     4,    72,    55,    69,    70,   173,    73,    73,
      55,    68,    69,    70,    19,    71,    73,    73,    23,    24,
      25,    74,    75,    76,    55,   124,   125,   126,   127,   128,
     129,   130,   131,    75,    76,   134,   135,   136,   137,    77,
      78,    75,    76,   142,   143,    71,    80,    73,    72,   100,
     101,    74,    75,    76,   153,   154,   101,    72,    60,    61,
      62,    63,    72,    71,   115,    73,   117,   166,   167,    72,
     115,    71,   117,    73,    76,    72,   263,    79,   117,    71,
     119,    73,   117,    72,   119,    72,   117,   138,   139,   140,
     141,    74,    75,   138,   139,   140,   141,    74,    75,   138,
     266,   140,   141,    72,   139,   140,   141,    74,    75,   140,
     141,   162,   163,   164,   165,    74,    75,    76,   169,   298,
      74,    75,   173,    29,   169,    72,   305,    72,   173,    73,
     296,    74,    75,    72,   173,    72,   141,   303,   173,    72,
     179,    72,   173,   148,   179,    72,     3,     4,   327,    75,
      76,    77,    78,   332,    74,    75,    72,     3,     4,   325,
      72,     3,     4,    72,   330,    71,    72,    74,    75,    72,
       3,     4,    74,    75,   162,   163,    72,    83,    84,    85,
      86,    72,    88,    89,   164,   165,    72,    72,    72,   240,
      96,    97,   291,   244,   293,   240,   102,   103,   104,   244,
      73,   240,    74,    74,    74,   240,    74,   113,    73,   240,
      73,    73,   263,    73,    75,   266,    62,    75,   263,    76,
      62,   266,    79,    56,    57,    58,    59,   266,     3,     4,
      76,   266,   151,    79,    76,   266,    74,    79,    74,    74,
      74,   152,    -1,    76,   100,   296,    79,    -1,    -1,    -1,
      -1,   296,   303,    -1,    -1,    -1,    -1,   296,   303,   298,
      -1,   296,    -1,   298,   303,   296,   305,    -1,   303,    -1,
     305,    -1,   303,    -1,   325,    -1,    -1,    -1,    -1,   330,
     325,    -1,    -1,    -1,    -1,   330,   325,    62,   327,    -1,
     325,   330,   327,   332,   325,   330,    -1,   332,    -1,   330,
      -1,    76,    -1,    -1,    79,    -1,    -1,    -1,   214,   215,
     216,   217,   218,   219,   220,   221,   222,   223,   224,   225,
     226,   227,   228,   229,   230,   231,   232,   233,   234,   235,
     236,   237,    -1,    -1,    -1,   241,    -1,    -1,    -1,   245,
     246,   247,   248,   249,   250,    -1,    -1,    -1,    -1,    -1,
     256,   257,   258,   259,   260,     5,     6,     7,     8,     9,
      10,    11,    56,    57,    58,    59,    60,    61,    62,    63,
      20,    21,    22,    -1,    -1,    -1,    26,    27,    28,    -1,
      30,     3,     4,     3,     4,    -1,    -1,    -1,     6,     7,
       8,     9,    10,    11,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    20,    21,    22,    55,    24,    -1,    26,    27,
      28,    -1,    30,    -1,    -1,    -1,    -1,   323,   324,    -1,
      42,    -1,    44,    45,    46,    47,    -1,    -1,    -1,    51,
      -1,    53,    54,    55,    56,    57,    58,    59,    60,    61,
      62,    63,    62,    -1,    66,    67,    68,    69,    70,    -1,
      -1,    73,    -1,    -1,    76,    -1,    76,    79,    42,    79,
      44,    45,    46,    47,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   124,   125,   126,   127,   128,   129,
     130,   131,    -1,    -1,    68,    69,    70,    -1,    -1,    73,
      -1,    -1,   142,   143,    -1,    -1,    -1,    -1,    -1,     3,
       4,    -1,    -1,   153,   154,    -1,   124,    -1,   126,    -1,
     128,    -1,   130,    -1,    -1,    -1,   166,   167,    -1,    -1,
      -1,    -1,    -1,    -1,   142,    -1,     3,     4,    -1,    -1,
     148,    -1,    -1,    -1,    -1,   153,    -1,    -1,    42,    -1,
      44,    45,    46,    47,    -1,    -1,    -1,    51,   166,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      -1,    -1,    66,    67,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    76,    -1,    51,    79,    53,    54,    55,    56,
      57,    58,    59,    60,    61,    62,    63,    -1,    -1,    66,
      67,    -1,    -1,     6,   244,    -1,    -1,    -1,    -1,    76,
      -1,    -1,    79,    16,    17,    18,    19,    20,    21,    22,
      23,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,    -1,
      -1,    42,    -1,    44,    45,    46,    47,    -1,    -1,    -1,
      51,    -1,    53,    54,    55,    56,    57,    58,    59,    60,
      61,    62,    63,    -1,     6,    66,    67,    -1,    -1,    -1,
      -1,    -1,    75,    76,    16,    17,    18,    19,    20,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,    33,    34,    35,    36,    37,    38,    39,    40,    41,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,     6,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      72,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,     0,     1,    -1,    -1,    -1,    -1,     6,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    72,    16,    17,
      18,    19,    20,    21,    22,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,    41,     0,     1,    -1,    -1,    -1,    -1,
       6,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      16,    17,    18,    19,    20,    21,    22,    23,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,     6,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    -1,    42,    -1,    44,    45,    46,    47,    -1,
      -1,    -1,    51,    -1,    53,    54,    55,    56,    57,    58,
      59,    60,    61,    62,    63,    -1,    -1,    66,    67,    68,
      69,    70,    -1,    -1,    73
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    82,     0,     1,     6,    16,    17,    18,    19,    20,
      21,    22,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,    83,    84,    42,    44,    45,    46,    47,    51,    53,
      54,    55,    56,    57,    58,    59,    60,    61,    62,    63,
      66,    67,    68,    69,    70,    73,    86,    87,    88,    89,
      93,    94,    95,    96,    97,    86,    87,    86,    87,    86,
      87,    86,    87,    86,    87,    86,    87,    94,    95,    96,
      97,    86,    87,    86,    87,    86,    87,    97,    87,    97,
      94,    95,    96,    97,    86,    87,    86,    87,     3,     4,
      76,    79,    85,    86,    87,    98,    99,   100,   101,   102,
      83,    86,    87,   102,    71,    73,    71,    73,    71,    73,
      86,    96,    98,   102,    72,    72,    72,    72,    72,    72,
      72,    72,    83,    83,    72,    72,    72,    72,    72,    72,
      72,    72,    72,    72,    83,    83,    83,    83,    72,    83,
      83,    72,    72,    72,    72,    83,    83,   101,    98,    83,
      83,    83,    75,    76,    77,    78,    72,    72,    83,    73,
      86,    90,    98,    73,    91,    94,    95,    96,    98,    73,
      92,    94,    95,    74,    74,    74,    85,    86,    87,    85,
      86,    85,    86,    87,    85,    86,    85,    86,    87,    85,
      86,    85,    86,    87,    85,    86,    62,    85,    62,    85,
      62,    85,    62,    85,    94,    98,   102,    95,    98,   102,
      94,    95,    96,    98,   102,    94,    95,    96,    97,    98,
     102,    85,    86,    87,    85,    86,    87,    97,    69,    70,
      73,    88,    69,    70,    73,    89,    85,    86,    87,    85,
      86,    80,    99,    99,   100,   100,    85,    86,    87,    85,
      86,    90,    74,    75,    91,    74,    75,    92,    74,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    72,    83,    72,    83,    71,    73,    71,    73,    96,
      98,    83,    71,    73,    71,    73,    98,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    74,    90,
      74,    91,    74,    85,    85,    73,    91,    73,    92,    74,
      73,    91,    73,    92,    74,    83,    83,    91,    74,    92,
      74,    91,    74,    92,    74,    74,    74,    74,    74
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    81,    82,    82,    82,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    83,    83,
      83,    83,    83,    83,    83,    83,    83,    83,    84,    84,
      84,    84,    84,    84,    84,    85,    85,    86,    86,    86,
      86,    87,    87,    88,    88,    88,    88,    88,    88,    89,
      89,    89,    89,    89,    89,    89,    89,    90,    90,    90,
      91,    91,    91,    91,    91,    92,    92,    93,    93,    94,
      94,    94,    94,    95,    95,    95,    95,    96,    96,    96,
      96,    96,    96,    96,    97,    97,    97,    97,    97,    98,
      98,    98,    99,    99,    99,   100,   100,   100,   101,   101,
     102
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     2,     0,     5,     5,     5,     5,
       5,     5,     5,     5,     5,     5,     5,     5,     5,     5,
       5,     5,     5,     5,     5,     5,     5,     5,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     4,     4,     4,     4,     4,     4,
       4,     4,     4,     4,     4,     4,     3,     3,     5,     5,
       7,     7,     3,     3,     3,     3,     5,     5,     5,     5,
       5,     5,     5,     3,     3,     3,     3,     3,     3,     3,
       2,     5,     5,     5,     5,     5,     3,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     3,     3,     5,     4,     5,     4,     3,
       3,     5,     4,     5,     4,     5,     4,     1,     1,     3,
       1,     1,     1,     1,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     3,
       3,     1,     3,     3,     1,     1,     2,     3,     1,     1,
       1
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
#line 127 "assemblerDSLdos32.y"
                            { }
#line 1542 "assemblerDSLdos32.tab.c"
    break;

  case 3: /* program: program stmt  */
#line 128 "assemblerDSLdos32.y"
                              { }
#line 1548 "assemblerDSLdos32.tab.c"
    break;

  case 4: /* program: program error  */
#line 129 "assemblerDSLdos32.y"
                              {
		char * buffer = (char *) malloc(1024);

		strcpy ( buffer,"Error in Grammar");
		yyerror( buffer );
	}
#line 1559 "assemblerDSLdos32.tab.c"
    break;

  case 5: /* stmt: %empty  */
#line 138 "assemblerDSLdos32.y"
                            { }
#line 1565 "assemblerDSLdos32.tab.c"
    break;

  case 14: /* stmt: TOK_AAA reg8L ',' reg8L stmt  */
#line 147 "assemblerDSLdos32.y"
                                             {
	}
#line 1572 "assemblerDSLdos32.tab.c"
    break;

  case 16: /* stmt: TOK_AAA reg8L ',' ident stmt  */
#line 150 "assemblerDSLdos32.y"
                                             {
	}
#line 1579 "assemblerDSLdos32.tab.c"
    break;

  case 18: /* stmt: TOK_AAA reg8H ',' ident stmt  */
#line 153 "assemblerDSLdos32.y"
                                             {
	}
#line 1586 "assemblerDSLdos32.tab.c"
    break;

  case 20: /* stmt: TOK_AAA reg16 ',' ident stmt  */
#line 156 "assemblerDSLdos32.y"
                                             {
	}
#line 1593 "assemblerDSLdos32.tab.c"
    break;

  case 22: /* stmt: TOK_AAA reg32 ',' ident stmt  */
#line 159 "assemblerDSLdos32.y"
                                             {
	
	}
#line 1601 "assemblerDSLdos32.tab.c"
    break;

  case 27: /* stmt: TOK_ADD mem ',' con stmt  */
#line 166 "assemblerDSLdos32.y"
                                         {
	}
#line 1608 "assemblerDSLdos32.tab.c"
    break;

  case 31: /* stmt: TOK_SHL mem ',' TOK_CL  */
#line 171 "assemblerDSLdos32.y"
                                       {
	}
#line 1615 "assemblerDSLdos32.tab.c"
    break;

  case 35: /* stmt: TOK_SHR mem ',' TOK_CL  */
#line 176 "assemblerDSLdos32.y"
                                       {
	}
#line 1622 "assemblerDSLdos32.tab.c"
    break;

  case 40: /* stmt: TOK_AND mem ',' con  */
#line 182 "assemblerDSLdos32.y"
                                    {
	}
#line 1629 "assemblerDSLdos32.tab.c"
    break;

  case 45: /* stmt: TOK_NOT mem ',' con  */
#line 188 "assemblerDSLdos32.y"
                                    {
	}
#line 1636 "assemblerDSLdos32.tab.c"
    break;

  case 50: /* stmt: TOK_XOR mem ',' con  */
#line 194 "assemblerDSLdos32.y"
                                    {
	}
#line 1643 "assemblerDSLdos32.tab.c"
    break;

  case 55: /* stmt: TOK_OR mem ',' con  */
#line 200 "assemblerDSLdos32.y"
                                   {
	}
#line 1650 "assemblerDSLdos32.tab.c"
    break;

  case 57: /* stmt: TOK_DEC mem stmt  */
#line 203 "assemblerDSLdos32.y"
                                 {
	}
#line 1657 "assemblerDSLdos32.tab.c"
    break;

  case 61: /* stmt: TOK_IMUL reg32 ',' mem ',' con stmt  */
#line 208 "assemblerDSLdos32.y"
                                                      {
	}
#line 1664 "assemblerDSLdos32.tab.c"
    break;

  case 63: /* stmt: TOK_IDIV mem stmt  */
#line 211 "assemblerDSLdos32.y"
                                    {
	}
#line 1671 "assemblerDSLdos32.tab.c"
    break;

  case 65: /* stmt: TOK_INC mem stmt  */
#line 214 "assemblerDSLdos32.y"
                                 {
	}
#line 1678 "assemblerDSLdos32.tab.c"
    break;

  case 67: /* stmt: TOK_LEA reg32 ',' mem32 stmt  */
#line 217 "assemblerDSLdos32.y"
                                             {
	}
#line 1685 "assemblerDSLdos32.tab.c"
    break;

  case 72: /* stmt: TOK_MOV mem ',' con stmt  */
#line 223 "assemblerDSLdos32.y"
                                         {
	}
#line 1692 "assemblerDSLdos32.tab.c"
    break;

  case 74: /* stmt: TOK_NEG mem stmt  */
#line 226 "assemblerDSLdos32.y"
                                 {
	}
#line 1699 "assemblerDSLdos32.tab.c"
    break;

  case 76: /* stmt: TOK_POP mem stmt  */
#line 229 "assemblerDSLdos32.y"
                                  {
	}
#line 1706 "assemblerDSLdos32.tab.c"
    break;

  case 79: /* stmt: TOK_PUSH con stmt  */
#line 233 "assemblerDSLdos32.y"
                                  {
	}
#line 1713 "assemblerDSLdos32.tab.c"
    break;

  case 80: /* stmt: TOK_RET stmt  */
#line 235 "assemblerDSLdos32.y"
                                  {
	}
#line 1720 "assemblerDSLdos32.tab.c"
    break;

  case 85: /* stmt: TOK_SUB mem ',' con stmt  */
#line 241 "assemblerDSLdos32.y"
                                         {
	}
#line 1727 "assemblerDSLdos32.tab.c"
    break;

  case 86: /* stmt: jump_label ident stmt  */
#line 243 "assemblerDSLdos32.y"
                                         {
	}
#line 1734 "assemblerDSLdos32.tab.c"
    break;

  case 104: /* mem16: '[' expr ']'  */
#line 277 "assemblerDSLdos32.y"
                               {
	}
#line 1741 "assemblerDSLdos32.tab.c"
    break;

  case 106: /* mem16: TOK_WORD '[' regSeq16 ']'  */
#line 280 "assemblerDSLdos32.y"
                                                   {
	}
#line 1748 "assemblerDSLdos32.tab.c"
    break;

  case 108: /* mem16: TOK_BYTE '[' regSeq8 ']'  */
#line 283 "assemblerDSLdos32.y"
                                                  {
	}
#line 1755 "assemblerDSLdos32.tab.c"
    break;

  case 110: /* mem32: '[' expr ']'  */
#line 289 "assemblerDSLdos32.y"
                             {
	}
#line 1762 "assemblerDSLdos32.tab.c"
    break;

  case 112: /* mem32: TOK_DWORD '[' regSeq32 ']'  */
#line 292 "assemblerDSLdos32.y"
                                                   {
	}
#line 1769 "assemblerDSLdos32.tab.c"
    break;

  case 114: /* mem32: TOK_WORD '[' regSeq16 ']'  */
#line 295 "assemblerDSLdos32.y"
                                                   {
	}
#line 1776 "assemblerDSLdos32.tab.c"
    break;

  case 116: /* mem32: TOK_BYTE '[' regSeq8 ']'  */
#line 298 "assemblerDSLdos32.y"
                                                  {
	}
#line 1783 "assemblerDSLdos32.tab.c"
    break;

  case 142: /* reg16: TOK_SI  */
#line 346 "assemblerDSLdos32.y"
                       {
	}
#line 1790 "assemblerDSLdos32.tab.c"
    break;

  case 156: /* factor: '-' number  */
#line 373 "assemblerDSLdos32.y"
                             { }
#line 1796 "assemblerDSLdos32.tab.c"
    break;

  case 157: /* factor: '(' expr ')'  */
#line 374 "assemblerDSLdos32.y"
                             { }
#line 1802 "assemblerDSLdos32.tab.c"
    break;


#line 1806 "assemblerDSLdos32.tab.c"

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

#line 386 "assemblerDSLdos32.y"

