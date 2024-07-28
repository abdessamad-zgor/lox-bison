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

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
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
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    CLASS = 258,                   /* CLASS  */
    FUN = 259,                     /* FUN  */
    VAR = 260,                     /* VAR  */
    SUPER = 261,                   /* SUPER  */
    PRINT = 262,                   /* PRINT  */
    THIS = 263,                    /* THIS  */
    TRUE = 264,                    /* TRUE  */
    FALSE = 265,                   /* FALSE  */
    RETURN = 266,                  /* RETURN  */
    NIL = 267,                     /* NIL  */
    ASSIGN = 268,                  /* ASSIGN  */
    EOL = 269,                     /* EOL  */
    FOR = 270,                     /* FOR  */
    WHILE = 271,                   /* WHILE  */
    IF = 272,                      /* IF  */
    ELSE = 273,                    /* ELSE  */
    OR = 274,                      /* OR  */
    AND = 275,                     /* AND  */
    EQ = 276,                      /* EQ  */
    NEQ = 277,                     /* NEQ  */
    GT = 278,                      /* GT  */
    LT = 279,                      /* LT  */
    GTE = 280,                     /* GTE  */
    LTE = 281,                     /* LTE  */
    NOT = 282,                     /* NOT  */
    ADD = 283,                     /* ADD  */
    MINUS = 284,                   /* MINUS  */
    DIV = 285,                     /* DIV  */
    MUL = 286,                     /* MUL  */
    POW = 287,                     /* POW  */
    REM = 288,                     /* REM  */
    LPAREN = 289,                  /* LPAREN  */
    RPAREN = 290,                  /* RPAREN  */
    LBRACE = 291,                  /* LBRACE  */
    RBRACE = 292,                  /* RBRACE  */
    DOT = 293,                     /* DOT  */
    COMMA = 294,                   /* COMMA  */
    SEMICOMMA = 295,               /* SEMICOMMA  */
    IDENTIFIER = 296,              /* IDENTIFIER  */
    NUMBER = 297,                  /* NUMBER  */
    STRING = 298,                  /* STRING  */
    UMINUS = 299                   /* UMINUS  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
