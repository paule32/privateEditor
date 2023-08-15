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

extern void add_node_string( int, char* );
extern void add_node_print ( int, int );

extern void display_list      ( );
extern int  yylex();

// ----------------------------------------------------------------------------
// this variable is important ! - it counts the commands, and is in relation
// to, and with other command's...
// ----------------------------------------------------------------------------
static int command_reference_counter = 1;

// ----------------------------------------------------------------------------
// the following "export" function is used in Delphi, to call the tree run ...
// ----------------------------------------------------------------------------
void EXPORT
yy_dbase_win32_run_code(void) {
    display_list();
}

#line 129 "dBaseDSLwin32.tab.c"

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
  YYSYMBOL_TOK_PRINT_ONE = 41,             /* TOK_PRINT_ONE  */
  YYSYMBOL_TOK_PRINT_TWO = 42,             /* TOK_PRINT_TWO  */
  YYSYMBOL_43_ = 43,                       /* '#'  */
  YYSYMBOL_44_ = 44,                       /* '='  */
  YYSYMBOL_45_ = 45,                       /* '('  */
  YYSYMBOL_46_ = 46,                       /* ')'  */
  YYSYMBOL_47_ = 47,                       /* ','  */
  YYSYMBOL_48_ = 48,                       /* '.'  */
  YYSYMBOL_49_ = 49,                       /* '+'  */
  YYSYMBOL_50_ = 50,                       /* '-'  */
  YYSYMBOL_51_ = 51,                       /* '*'  */
  YYSYMBOL_52_ = 52,                       /* '/'  */
  YYSYMBOL_YYACCEPT = 53,                  /* $accept  */
  YYSYMBOL_program = 54,                   /* program  */
  YYSYMBOL_define_macro = 55,              /* define_macro  */
  YYSYMBOL_stmt = 56,                      /* stmt  */
  YYSYMBOL_57_1 = 57,                      /* $@1  */
  YYSYMBOL_58_2 = 58,                      /* $@2  */
  YYSYMBOL_59_3 = 59,                      /* $@3  */
  YYSYMBOL_60_4 = 60,                      /* $@4  */
  YYSYMBOL_61_5 = 61,                      /* $@5  */
  YYSYMBOL_62_6 = 62,                      /* $@6  */
  YYSYMBOL_63_7 = 63,                      /* $@7  */
  YYSYMBOL_64_8 = 64,                      /* $@8  */
  YYSYMBOL_ident_object = 65,              /* ident_object  */
  YYSYMBOL_local_object = 66,              /* local_object  */
  YYSYMBOL_param_object = 67,              /* param_object  */
  YYSYMBOL_args_param = 68,                /* args_param  */
  YYSYMBOL_ident_string = 69,              /* ident_string  */
  YYSYMBOL_return_merge = 70,              /* return_merge  */
  YYSYMBOL_ident_merge = 71,               /* ident_merge  */
  YYSYMBOL_return_value = 72,              /* return_value  */
  YYSYMBOL_expr = 73,                      /* expr  */
  YYSYMBOL_74_9 = 74,                      /* $@9  */
  YYSYMBOL_75_10 = 75,                     /* $@10  */
  YYSYMBOL_term = 76,                      /* term  */
  YYSYMBOL_77_11 = 77,                     /* $@11  */
  YYSYMBOL_78_12 = 78,                     /* $@12  */
  YYSYMBOL_factor = 79,                    /* factor  */
  YYSYMBOL_number = 80,                    /* number  */
  YYSYMBOL_ident = 81,                     /* ident  */
  YYSYMBOL_if_ident_and_eqeq = 82,         /* if_ident_and_eqeq  */
  YYSYMBOL_if_ident_and_lteq = 83,         /* if_ident_and_lteq  */
  YYSYMBOL_if_ident_and_gteq = 84,         /* if_ident_and_gteq  */
  YYSYMBOL_if_ident_and_ltgt = 85,         /* if_ident_and_ltgt  */
  YYSYMBOL_if_rel = 86,                    /* if_rel  */
  YYSYMBOL_relation = 87,                  /* relation  */
  YYSYMBOL_if_ident_eqeq = 88,             /* if_ident_eqeq  */
  YYSYMBOL_if_ident_lteq = 89,             /* if_ident_lteq  */
  YYSYMBOL_if_ident_gteq = 90,             /* if_ident_gteq  */
  YYSYMBOL_if_ident_ltgt = 91,             /* if_ident_ltgt  */
  YYSYMBOL_if_else_endif = 92              /* if_else_endif  */
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
#define YYLAST   459

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  53
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  40
/* YYNRULES -- Number of rules.  */
#define YYNRULES  111
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  245

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   297


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
       2,     2,     2,     2,     2,    43,     2,     2,     2,     2,
      45,    46,    51,    49,    47,    50,    48,    52,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,    44,     2,     2,     2,     2,     2,     2,     2,     2,
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
      35,    36,    37,    38,    39,    40,    41,    42
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   104,   104,   105,   106,   113,   114,   118,   120,   119,
     151,   151,   177,   178,   179,   180,   181,   182,   184,   184,
     192,   192,   200,   201,   202,   204,   203,   207,   208,   209,
     211,   212,   214,   215,   217,   218,   220,   221,   221,   222,
     223,   224,   224,   225,   226,   226,   227,   231,   232,   236,
     237,   241,   242,   246,   247,   251,   252,   253,   257,   261,
     262,   274,   275,   276,   278,   279,   281,   282,   284,   285,
     286,   289,   290,   293,   294,   299,   298,   334,   333,   368,
     390,   389,   425,   424,   459,   480,   498,   516,   537,   558,
     576,   577,   578,   579,   582,   583,   584,   585,   586,   590,
     591,   592,   593,   594,   597,   598,   599,   600,   603,   604,
     605,   606
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
  "TOK_WITH", "TOK_ENDWITH", "TOK_CUSTOM", "TOK_DEFINE", "TOK_PRINT_ONE",
  "TOK_PRINT_TWO", "'#'", "'='", "'('", "')'", "','", "'.'", "'+'", "'-'",
  "'*'", "'/'", "$accept", "program", "define_macro", "stmt", "$@1", "$@2",
  "$@3", "$@4", "$@5", "$@6", "$@7", "$@8", "ident_object", "local_object",
  "param_object", "args_param", "ident_string", "return_merge",
  "ident_merge", "return_value", "expr", "$@9", "$@10", "term", "$@11",
  "$@12", "factor", "number", "ident", "if_ident_and_eqeq",
  "if_ident_and_lteq", "if_ident_and_gteq", "if_ident_and_ltgt", "if_rel",
  "relation", "if_ident_eqeq", "if_ident_lteq", "if_ident_gteq",
  "if_ident_ltgt", "if_else_endif", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-50)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-83)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     -50,   392,   -50,   -50,   -50,     5,     5,     5,     5,    43,
      43,    43,     5,    23,   -50,   -50,    13,    15,   -50,    11,
     416,   416,   416,   416,   -50,   108,    66,   336,    32,   364,
     308,   -50,    18,    18,    54,    10,     5,   308,   141,   141,
      12,   -50,   -50,   -50,    19,     0,   103,    66,    70,   128,
     173,   -50,   -50,   155,     3,     5,   -50,   -50,   -50,   -50,
     177,   177,   177,   177,     5,   -50,   104,     5,   -50,   -50,
       8,   416,   416,     0,    26,     5,   107,    90,    70,    70,
      66,    94,    66,    70,   128,    57,   -50,   141,   116,   105,
     106,   122,   416,   -50,     5,    34,   280,   128,   -50,   123,
      66,   166,   166,    48,    59,    76,   416,   416,   416,   416,
     163,     5,   167,   -50,   186,   176,   180,    50,     5,    72,
     153,   416,   416,   -50,    70,     0,     0,     0,     0,   -50,
     416,    84,   416,   280,   -50,   416,   416,   416,     5,   -50,
     -50,   -50,   -50,   -50,   -50,   -50,   -50,   -50,   209,   217,
     234,   251,    89,   -50,   236,   416,     0,   187,   416,   416,
     211,   213,   -50,   173,   173,   -50,   -50,   -50,    27,   -50,
     -50,   -50,   -50,   -50,   242,   -50,   -50,   -50,   -50,    31,
     -50,   -50,   244,   210,   216,   221,   -50,   416,   222,   -50,
     128,     5,   238,   240,   226,   416,   416,   156,   177,   177,
     177,   177,   -50,   160,   230,    29,   183,   183,   244,   -50,
     416,   165,   416,   416,     5,   -50,   -50,   416,   -50,   -50,
     -50,   -50,   -50,   -50,    66,    70,    66,    70,   -50,   245,
     239,   -50,   -50,   169,   -50,   -50,   416,   241,   247,   416,
     416,   249,   -50,   416,   -50
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       2,     0,     1,     4,    47,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    18,    20,     0,     0,     3,     0,
       7,     7,     7,     7,    46,     0,    53,     7,    51,     7,
       7,    89,    55,    55,     0,     0,     0,     7,     0,     0,
       0,    88,    58,    59,     0,     0,     0,    15,    16,    17,
      79,    84,    85,     0,     0,     0,   108,   109,   110,   111,
       0,     0,     0,     0,     0,    29,     0,     0,    27,    28,
       0,     7,     7,     0,     0,     0,     0,     0,    19,    21,
       5,     6,    12,    13,    14,    75,    86,     0,     0,     0,
       0,     0,     7,    41,     0,    37,     7,     8,    44,     0,
      48,    94,    94,    94,    94,    94,     7,     7,     7,     7,
      54,     0,    52,    57,     0,     0,     0,    75,     0,    25,
       0,     7,     7,    87,    60,     0,     0,     0,     0,    40,
       7,     0,     7,     7,    39,     7,     7,     7,     0,    95,
      96,    97,    98,   102,   103,    99,   100,   101,     0,     0,
       0,     0,     0,    56,    61,     7,     0,     0,     7,     7,
       0,     0,    33,    76,    78,    81,    83,    42,     0,    38,
      36,     9,    45,    43,     0,   104,   106,   105,   107,     0,
      68,    69,    61,    66,    67,    71,    74,     7,    70,    30,
      10,     0,     0,     0,     0,     7,     7,     0,     0,     0,
       0,     0,    50,     0,     0,    70,     0,     0,    61,    31,
       7,     0,     7,     7,     0,    32,    35,     7,    90,    92,
      91,    93,    49,    73,    62,    63,    65,    60,    72,     0,
       0,    24,    26,     0,    34,    11,     7,     0,     0,     7,
       7,     0,    23,     7,    22
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
     -50,   -50,   -50,   -20,   -50,   -50,   -50,   -50,   -50,   -50,
     -50,   -50,    30,   212,    63,   252,    92,    80,   109,   -50,
     -12,   -50,   -50,   138,   -50,   -50,   139,   246,   258,   -50,
     -50,   -50,   -50,    60,   -49,   -50,   -50,   -50,   -50,   -50
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     1,    17,    18,   135,   210,    38,    39,   159,   132,
     130,   136,    19,    29,    27,    71,   104,   185,   186,   187,
     105,    88,    89,    50,    90,    91,    51,    52,    32,   139,
     140,   141,   142,   143,   106,    20,    21,    22,    23,    24
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      56,    57,    58,    59,    41,    49,     4,    65,     4,    68,
      69,     4,   107,   108,   109,     4,    41,    77,     4,    41,
      42,    43,     4,    41,    42,    43,     4,    53,    81,     4,
       4,    44,    84,    85,     4,    25,    26,    28,    30,    42,
      43,    97,    35,    37,    74,    45,    31,    47,    66,    98,
      46,   115,   116,    40,   113,    75,    54,    45,    55,    55,
      45,   117,    46,    70,    45,    46,    76,   138,    36,    46,
      80,   118,   129,   196,    82,   123,   134,   202,   138,   -75,
      55,   156,    55,    95,    99,   100,   148,   149,   150,   151,
     103,   103,   103,   103,    26,   138,    55,    28,    73,   -77,
      26,   161,   162,   123,   119,   120,   -77,    41,    87,    48,
     167,   158,   169,   170,    55,   171,   172,   173,    60,    87,
      55,    61,    62,    63,   131,   -77,   -75,   110,   122,   168,
      78,    79,    55,   114,   179,   189,    83,    55,   192,   193,
     111,   152,   188,   -77,   190,    96,    42,    43,   157,   218,
     219,   220,   221,   121,   126,    55,    55,   127,     4,    41,
      42,    43,   144,   145,   146,   147,   125,   209,   174,   137,
     205,    55,    92,    93,   128,   215,   216,   -77,   -75,   124,
       4,    41,    42,    43,   183,   138,     4,   133,    42,    43,
     229,    94,   231,   232,   101,   102,   188,   234,   197,   160,
      45,    55,   217,   154,    55,    46,   222,   155,    55,   203,
      64,   230,   183,    55,    67,   237,   238,    55,   175,   241,
     242,   211,    45,   244,   -80,   -82,   176,    46,   103,   103,
     103,   103,   153,    64,   191,    55,   224,   226,   183,     4,
      41,    42,    43,   177,   233,   194,   184,     4,    41,    42,
      43,   195,   198,   180,   181,   199,   200,   201,    55,   206,
     178,   180,   181,   163,   164,   207,   165,   166,    33,    34,
     208,   214,   -75,   212,   184,   213,   223,   235,   236,   112,
     239,   182,   240,     4,   243,    72,    46,     5,   228,    45,
      55,   204,    86,     0,    46,     0,     0,     0,   225,   227,
     184,     0,     6,     7,     8,     9,    10,     0,     0,     0,
      11,     4,     0,    12,     0,     5,     0,    13,     0,     0,
       0,    14,    15,    16,     0,     0,     0,     0,     0,    87,
       6,     7,     8,     9,    10,     0,     0,     0,    11,     4,
       0,    12,     0,     5,     0,    13,     0,     0,     0,    14,
      15,    16,     0,     0,     0,     0,    55,     0,     6,     7,
       8,     9,    10,     0,     0,     0,    11,     4,     0,    12,
       0,     5,     0,    13,     0,     0,     0,    14,    15,    16,
       0,     0,     0,    64,     0,     0,     6,     7,     8,     9,
      10,     0,     2,     3,    11,     4,     0,    12,     0,     5,
       0,    13,     0,     0,     0,    14,    15,    16,     0,     0,
       0,    67,     0,     0,     6,     7,     8,     9,    10,     4,
       0,     0,    11,     5,     0,    12,     0,     0,     0,    13,
       0,     0,     0,    14,    15,    16,     0,     0,     6,     7,
       8,     9,    10,     0,     0,     0,    11,     0,     0,    12,
       0,     0,     0,    13,     0,     0,     0,    14,    15,    16
};

static const yytype_int16 yycheck[] =
{
      20,    21,    22,    23,     4,    17,     3,    27,     3,    29,
      30,     3,    61,    62,    63,     3,     4,    37,     3,     4,
       5,     6,     3,     4,     5,     6,     3,    16,    40,     3,
       3,    16,    44,    45,     3,     5,     6,     7,     8,     5,
       6,    53,    12,    13,    34,    45,     3,    17,    16,    46,
      50,    71,    72,    40,    46,    45,    45,    45,    48,    48,
      45,    73,    50,    45,    45,    50,    36,    19,    45,    50,
      40,    45,    92,    46,    44,    46,    96,    46,    19,    50,
      48,    31,    48,    53,    54,    55,   106,   107,   108,   109,
      60,    61,    62,    63,    64,    19,    48,    67,    44,    49,
      70,   121,   122,    46,    74,    75,    49,     4,    49,    17,
     130,    39,   132,   133,    48,   135,   136,   137,    10,    49,
      48,    13,    14,    15,    94,    49,    50,    64,    38,    45,
      38,    39,    48,    70,    45,   155,    44,    48,   158,   159,
      36,   111,   154,    49,   156,    53,     5,     6,   118,   198,
     199,   200,   201,    46,    49,    48,    48,    51,     3,     4,
       5,     6,   102,   103,   104,   105,    50,   187,   138,    46,
     182,    48,    17,    18,    52,   195,   196,    49,    50,    87,
       3,     4,     5,     6,   154,    19,     3,    95,     5,     6,
     210,    36,   212,   213,    17,    18,   208,   217,   168,    46,
      45,    48,    46,    27,    48,    50,    46,    27,    48,   179,
      47,    46,   182,    48,    47,    46,   236,    48,     9,   239,
     240,   191,    45,   243,    51,    52,     9,    50,   198,   199,
     200,   201,    46,    47,    47,    48,   206,   207,   208,     3,
       4,     5,     6,     9,   214,    34,   154,     3,     4,     5,
       6,    38,    10,    17,    18,    13,    14,    15,    48,    49,
       9,    17,    18,   125,   126,    49,   127,   128,    10,    11,
      49,    45,    50,    35,   182,    35,    46,    32,    39,    67,
      39,    45,    35,     3,    35,    33,    50,     7,   208,    45,
      48,   182,    46,    -1,    50,    -1,    -1,    -1,   206,   207,
     208,    -1,    22,    23,    24,    25,    26,    -1,    -1,    -1,
      30,     3,    -1,    33,    -1,     7,    -1,    37,    -1,    -1,
      -1,    41,    42,    43,    -1,    -1,    -1,    -1,    -1,    49,
      22,    23,    24,    25,    26,    -1,    -1,    -1,    30,     3,
      -1,    33,    -1,     7,    -1,    37,    -1,    -1,    -1,    41,
      42,    43,    -1,    -1,    -1,    -1,    48,    -1,    22,    23,
      24,    25,    26,    -1,    -1,    -1,    30,     3,    -1,    33,
      -1,     7,    -1,    37,    -1,    -1,    -1,    41,    42,    43,
      -1,    -1,    -1,    47,    -1,    -1,    22,    23,    24,    25,
      26,    -1,     0,     1,    30,     3,    -1,    33,    -1,     7,
      -1,    37,    -1,    -1,    -1,    41,    42,    43,    -1,    -1,
      -1,    47,    -1,    -1,    22,    23,    24,    25,    26,     3,
      -1,    -1,    30,     7,    -1,    33,    -1,    -1,    -1,    37,
      -1,    -1,    -1,    41,    42,    43,    -1,    -1,    22,    23,
      24,    25,    26,    -1,    -1,    -1,    30,    -1,    -1,    33,
      -1,    -1,    -1,    37,    -1,    -1,    -1,    41,    42,    43
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,    54,     0,     1,     3,     7,    22,    23,    24,    25,
      26,    30,    33,    37,    41,    42,    43,    55,    56,    65,
      88,    89,    90,    91,    92,    65,    65,    67,    65,    66,
      65,     3,    81,    81,    81,    65,    45,    65,    59,    60,
      40,     4,     5,     6,    16,    45,    50,    65,    69,    73,
      76,    79,    80,    16,    45,    48,    56,    56,    56,    56,
      10,    13,    14,    15,    47,    56,    16,    47,    56,    56,
      45,    68,    68,    44,    34,    45,    65,    56,    69,    69,
      65,    73,    65,    69,    73,    73,    80,    49,    74,    75,
      77,    78,    17,    18,    36,    65,    69,    73,    46,    65,
      65,    17,    18,    65,    69,    73,    87,    87,    87,    87,
      67,    36,    66,    46,    67,    56,    56,    73,    45,    65,
      65,    46,    38,    46,    69,    50,    49,    51,    52,    56,
      63,    65,    62,    69,    56,    57,    64,    46,    19,    82,
      83,    84,    85,    86,    86,    86,    86,    86,    56,    56,
      56,    56,    65,    46,    27,    27,    31,    65,    39,    61,
      46,    56,    56,    76,    76,    79,    79,    56,    45,    56,
      56,    56,    56,    56,    65,     9,     9,     9,     9,    45,
      17,    18,    45,    65,    69,    70,    71,    72,    73,    56,
      73,    47,    56,    56,    34,    38,    46,    65,    10,    13,
      14,    15,    46,    65,    71,    73,    49,    49,    49,    56,
      58,    65,    35,    35,    45,    56,    56,    46,    87,    87,
      87,    87,    46,    46,    65,    69,    65,    69,    70,    56,
      46,    56,    56,    65,    56,    32,    39,    46,    56,    39,
      35,    56,    56,    35,    56
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    53,    54,    54,    54,    55,    55,    56,    57,    56,
      58,    56,    56,    56,    56,    56,    56,    56,    59,    56,
      60,    56,    56,    56,    56,    61,    56,    56,    56,    56,
      56,    56,    56,    56,    56,    56,    56,    62,    56,    56,
      56,    63,    56,    56,    64,    56,    56,    65,    65,    66,
      66,    66,    66,    67,    67,    68,    68,    68,    69,    69,
      69,    70,    70,    70,    70,    70,    70,    70,    70,    70,
      70,    71,    71,    72,    72,    74,    73,    75,    73,    73,
      77,    76,    78,    76,    76,    79,    79,    79,    80,    81,
      82,    83,    84,    85,    86,    86,    86,    86,    86,    87,
      87,    87,    87,    87,    88,    89,    90,    91,    92,    92,
      92,    92
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     0,     2,     2,     3,     3,     0,     0,     5,
       0,     9,     3,     3,     3,     2,     2,     2,     0,     3,
       0,     3,    13,    12,     8,     0,     8,     3,     3,     3,
       6,     7,     7,     5,     8,     7,     5,     0,     5,     4,
       4,     0,     5,     5,     0,     5,     1,     1,     3,     7,
       6,     1,     3,     1,     3,     0,     3,     2,     1,     1,
       3,     0,     3,     3,     3,     3,     1,     1,     1,     1,
       1,     1,     3,     3,     1,     0,     4,     0,     4,     1,
       0,     4,     0,     4,     1,     1,     2,     3,     1,     1,
       4,     4,     4,     4,     0,     1,     1,     1,     1,     2,
       2,     2,     2,     2,     6,     6,     6,     6,     2,     2,
       2,     2
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
#line 104 "dBaseDSLwin32.y"
                  { }
#line 1414 "dBaseDSLwin32.tab.c"
    break;

  case 3: /* program: program stmt  */
#line 105 "dBaseDSLwin32.y"
                   { }
#line 1420 "dBaseDSLwin32.tab.c"
    break;

  case 4: /* program: program error  */
#line 106 "dBaseDSLwin32.y"
                    {
    	char * buffer = strdup( "Error in Grammar" );
    	yyerror( buffer );
    }
#line 1429 "dBaseDSLwin32.tab.c"
    break;

  case 7: /* stmt: %empty  */
#line 118 "dBaseDSLwin32.y"
                    { }
#line 1435 "dBaseDSLwin32.tab.c"
    break;

  case 8: /* $@1: %empty  */
#line 120 "dBaseDSLwin32.y"
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
#line 1471 "dBaseDSLwin32.tab.c"
    break;

  case 10: /* $@2: %empty  */
#line 151 "dBaseDSLwin32.y"
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
#line 1492 "dBaseDSLwin32.tab.c"
    break;

  case 11: /* stmt: TOK_FOR ident '=' expr TOK_TO expr $@2 stmt TOK_ENDFOR  */
#line 166 "dBaseDSLwin32.y"
                        {
    	node_new = (struct node *) malloc( sizeof( struct node ) );
    	node_new->token = (char *) malloc( 12 );

    	strcpy(node_new->token, "forend");
    	node_new->token_id = (yyvsp[-8].node_and_value).node_for->token_id;

    	node_new->prev = (yyvsp[-8].node_and_value).node_for;
    	node_new->next = NULL;
    	node_prev      = node_new;
    }
#line 1508 "dBaseDSLwin32.tab.c"
    break;

  case 12: /* stmt: define_macro TOK_ASSIGN ident_object  */
#line 177 "dBaseDSLwin32.y"
                                             { }
#line 1514 "dBaseDSLwin32.tab.c"
    break;

  case 13: /* stmt: define_macro TOK_ASSIGN ident_string  */
#line 178 "dBaseDSLwin32.y"
                                             { }
#line 1520 "dBaseDSLwin32.tab.c"
    break;

  case 14: /* stmt: define_macro TOK_ASSIGN expr  */
#line 179 "dBaseDSLwin32.y"
                                             { }
#line 1526 "dBaseDSLwin32.tab.c"
    break;

  case 15: /* stmt: define_macro ident_object  */
#line 180 "dBaseDSLwin32.y"
                                             { }
#line 1532 "dBaseDSLwin32.tab.c"
    break;

  case 16: /* stmt: define_macro ident_string  */
#line 181 "dBaseDSLwin32.y"
                                             { }
#line 1538 "dBaseDSLwin32.tab.c"
    break;

  case 17: /* stmt: define_macro expr  */
#line 182 "dBaseDSLwin32.y"
                                             {
    }
#line 1545 "dBaseDSLwin32.tab.c"
    break;

  case 18: /* $@3: %empty  */
#line 184 "dBaseDSLwin32.y"
                       {
        // ------------------------------------------------------
        // print 1 line into the console window without word wrap
        // ------------------------------------------------------
        add_node_print ( command_reference_counter, 1 );
    }
#line 1556 "dBaseDSLwin32.tab.c"
    break;

  case 19: /* stmt: TOK_PRINT_ONE $@3 ident_string  */
#line 189 "dBaseDSLwin32.y"
                       {
        add_node_string( command_reference_counter++, (yyvsp[0].node_and_value).content_str );
    }
#line 1564 "dBaseDSLwin32.tab.c"
    break;

  case 20: /* $@4: %empty  */
#line 192 "dBaseDSLwin32.y"
                       {
        // ------------------------------------------------------
        // print 1 line into the console window, no line break:
        // ------------------------------------------------------
        add_node_print ( command_reference_counter, 2 );
    }
#line 1575 "dBaseDSLwin32.tab.c"
    break;

  case 21: /* stmt: TOK_PRINT_TWO $@4 ident_string  */
#line 197 "dBaseDSLwin32.y"
                       {
        add_node_string( command_reference_counter++, (yyvsp[0].node_and_value).content_str );
    }
#line 1583 "dBaseDSLwin32.tab.c"
    break;

  case 25: /* $@5: %empty  */
#line 204 "dBaseDSLwin32.y"
    {
        add_node_new_class_obj( (yyvsp[-2].node_and_value).name, (yyvsp[0].node_and_value).name );    }
#line 1590 "dBaseDSLwin32.tab.c"
    break;

  case 26: /* stmt: TOK_CLASS ident_object TOK_OF ident_object $@5 stmt TOK_ENDCLASS stmt  */
#line 205 "dBaseDSLwin32.y"
                                                                                  {
    }
#line 1597 "dBaseDSLwin32.tab.c"
    break;

  case 28: /* stmt: TOK_PRIVATE ident_object stmt  */
#line 208 "dBaseDSLwin32.y"
                                              { }
#line 1603 "dBaseDSLwin32.tab.c"
    break;

  case 29: /* stmt: TOK_PARAMETER param_object stmt  */
#line 209 "dBaseDSLwin32.y"
                                              {
    }
#line 1610 "dBaseDSLwin32.tab.c"
    break;

  case 31: /* stmt: TOK_FUNCTION ident args_param stmt TOK_RETURN return_value stmt  */
#line 212 "dBaseDSLwin32.y"
                                                                                {
    }
#line 1617 "dBaseDSLwin32.tab.c"
    break;

  case 33: /* stmt: TOK_WITH ident_object stmt TOK_ENDWITH stmt  */
#line 215 "dBaseDSLwin32.y"
                                                                {
    }
#line 1624 "dBaseDSLwin32.tab.c"
    break;

  case 35: /* stmt: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')' stmt  */
#line 218 "dBaseDSLwin32.y"
                                                                                {
    }
#line 1631 "dBaseDSLwin32.tab.c"
    break;

  case 37: /* $@6: %empty  */
#line 221 "dBaseDSLwin32.y"
                                              { }
#line 1637 "dBaseDSLwin32.tab.c"
    break;

  case 41: /* $@7: %empty  */
#line 224 "dBaseDSLwin32.y"
                                                       { }
#line 1643 "dBaseDSLwin32.tab.c"
    break;

  case 44: /* $@8: %empty  */
#line 226 "dBaseDSLwin32.y"
                                                       { }
#line 1649 "dBaseDSLwin32.tab.c"
    break;

  case 50: /* local_object: ident_object TOK_ASSIGN TOK_NEW ident_object '(' ')'  */
#line 238 "dBaseDSLwin32.y"
    {
        add_node_new_class_ref( (yyvsp[-2].node_and_value).name, (yyvsp[-5].node_and_value).name );
    }
#line 1657 "dBaseDSLwin32.tab.c"
    break;

  case 58: /* ident_string: TOK_STRING  */
#line 258 "dBaseDSLwin32.y"
    {
        (yyval.node_and_value).content_str = strdup( (yyvsp[0].node_and_value).content_str );
    }
#line 1665 "dBaseDSLwin32.tab.c"
    break;

  case 60: /* ident_string: ident_string '+' ident_string  */
#line 263 "dBaseDSLwin32.y"
    {
        AnsiString str1 = (yyvsp[-2].node_and_value).content_str;
        AnsiString str2 = (yyvsp[0].node_and_value).content_str;
        
        AnsiString str3 = str1 + str2;
        
        (yyval.node_and_value).content_str = strdup( str3.c_str() );
    }
#line 1678 "dBaseDSLwin32.tab.c"
    break;

  case 63: /* return_merge: ident_object '+' ident_string  */
#line 276 "dBaseDSLwin32.y"
                                       {
    }
#line 1685 "dBaseDSLwin32.tab.c"
    break;

  case 65: /* return_merge: ident_string '+' ident_object  */
#line 279 "dBaseDSLwin32.y"
                                       {
    }
#line 1692 "dBaseDSLwin32.tab.c"
    break;

  case 67: /* return_merge: ident_string  */
#line 282 "dBaseDSLwin32.y"
                      {
    }
#line 1699 "dBaseDSLwin32.tab.c"
    break;

  case 75: /* $@9: %empty  */
#line 299 "dBaseDSLwin32.y"
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
#line 1720 "dBaseDSLwin32.tab.c"
    break;

  case 76: /* expr: expr $@9 '-' term  */
#line 316 "dBaseDSLwin32.y"
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
#line 1742 "dBaseDSLwin32.tab.c"
    break;

  case 77: /* $@10: %empty  */
#line 334 "dBaseDSLwin32.y"
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
#line 1763 "dBaseDSLwin32.tab.c"
    break;

  case 78: /* expr: expr $@10 '+' term  */
#line 351 "dBaseDSLwin32.y"
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
#line 1785 "dBaseDSLwin32.tab.c"
    break;

  case 79: /* expr: term  */
#line 369 "dBaseDSLwin32.y"
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
#line 1807 "dBaseDSLwin32.tab.c"
    break;

  case 80: /* $@11: %empty  */
#line 390 "dBaseDSLwin32.y"
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
#line 1828 "dBaseDSLwin32.tab.c"
    break;

  case 81: /* term: term $@11 '*' factor  */
#line 407 "dBaseDSLwin32.y"
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
#line 1850 "dBaseDSLwin32.tab.c"
    break;

  case 82: /* $@12: %empty  */
#line 425 "dBaseDSLwin32.y"
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
#line 1871 "dBaseDSLwin32.tab.c"
    break;

  case 83: /* term: term $@12 '/' factor  */
#line 442 "dBaseDSLwin32.y"
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
#line 1893 "dBaseDSLwin32.tab.c"
    break;

  case 84: /* term: factor  */
#line 460 "dBaseDSLwin32.y"
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
#line 1915 "dBaseDSLwin32.tab.c"
    break;

  case 85: /* factor: number  */
#line 481 "dBaseDSLwin32.y"
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
#line 1937 "dBaseDSLwin32.tab.c"
    break;

  case 86: /* factor: '-' number  */
#line 499 "dBaseDSLwin32.y"
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
#line 1959 "dBaseDSLwin32.tab.c"
    break;

  case 87: /* factor: '(' expr ')'  */
#line 517 "dBaseDSLwin32.y"
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
#line 1981 "dBaseDSLwin32.tab.c"
    break;

  case 88: /* number: TOK_NUMBER  */
#line 538 "dBaseDSLwin32.y"
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
#line 2003 "dBaseDSLwin32.tab.c"
    break;

  case 89: /* ident: TOK_ID  */
#line 559 "dBaseDSLwin32.y"
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
#line 2023 "dBaseDSLwin32.tab.c"
    break;

  case 108: /* if_else_endif: if_ident_eqeq stmt  */
#line 603 "dBaseDSLwin32.y"
                                   { }
#line 2029 "dBaseDSLwin32.tab.c"
    break;

  case 109: /* if_else_endif: if_ident_lteq stmt  */
#line 604 "dBaseDSLwin32.y"
                                   { }
#line 2035 "dBaseDSLwin32.tab.c"
    break;

  case 110: /* if_else_endif: if_ident_gteq stmt  */
#line 605 "dBaseDSLwin32.y"
                                   { }
#line 2041 "dBaseDSLwin32.tab.c"
    break;

  case 111: /* if_else_endif: if_ident_ltgt stmt  */
#line 606 "dBaseDSLwin32.y"
                                   { }
#line 2047 "dBaseDSLwin32.tab.c"
    break;


#line 2051 "dBaseDSLwin32.tab.c"

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

#line 609 "dBaseDSLwin32.y"


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
    newnode->prev = NULL;
    
    if (current == NULL) {
        node_head = newnode;
    }

    // ----------------------
    // safety search ...
    // ----------------------
    while (current->next != NULL) {
        current = current->next;
    }

    current->next = newnode;
    newnode->prev = current;
}

void
add_node_print( int command, int flag )
{
    if (flag == 1) {
        Node * nod = new Node( tt_print_one );
        nod->SetTokenTrace( command );

        rootNodes.push_back( nod );
    }   else {
        Node * nod = new Node( tt_print_two );
        nod->SetTokenTrace( command );

        rootNodes.push_back( nod );
    }
}

void
add_node_string( int command, char *str )
{
    Node * nod = new Node( str );

    nod->SetTokenType ( tt_const_string );
    nod->SetTokenTrace( command );
    nod->SetData( str );

    rootNodes.push_back( nod );
}


void DisplayTree(const Node* root)
{
    std::stringstream ss;
    if (root == NULL) {
        ShowMessage("List is empty !");
        return;
    }

    const std::vector<Node*>& subNodes = root->GetSubNodes();

    for (int i = 0; i < subNodes.size(); ++i) {
        DisplayTree(subNodes[i]);
    }
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
