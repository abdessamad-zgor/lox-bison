%{
#include <stdio.h>
%}

%token CLASS FUN VAR SUPER PRINT THIS TRUE FALSE RETURN NIL ASSIGN EOL
%token FOR WHILE IF ELSE OR AND EQ NEQ GT LT GTE LTE NOT 
%token ADD MINUS DIV MUL POW REM LPAREN RPAREN LBRACE RBRACE DOT COMMA SEMICOMMA
%token IDENTIFIER NUMBER STRING

%left OR
%left AND
%left EQ NEQ
%left LT LTE GT GTE
%left ADD MINUS
%left MUL DIV
%right NOT UMINUS

%precedence "then"
%precedence ELSE

%%

program: declaration_list YYEOF;

declaration_list
    : declaration_list declaration EOL
    | /* empty */
    ;

block_declaration_list
    : block_declaration_list block_declaration
    | 
    ;

declaration
    : class_decl
    | fun_decl
    | var_decl
    | statement
    ;

block_declaration
    : fun_decl
    | var_decl
    | statement
    ;

class_decl
    : CLASS IDENTIFIER LBRACE function_list RBRACE
    | CLASS IDENTIFIER LT IDENTIFIER LBRACE function_list  RBRACE;

function_list
    : function_list function
    | /* empty */
    ;

fun_decl
    : FUN function
    ;

var_decl
    : VAR IDENTIFIER SEMICOMMA
    | VAR IDENTIFIER ASSIGN expression SEMICOMMA
    ;

statement
    : expr_stmt
    | for_stmt
    | if_stmt
    | print_stmt
    | return_stmt
    | while_stmt
    ;

expr_stmt
    : expression SEMICOMMA
    ;

for_stmt
    : FOR LPAREN for_init expression SEMICOMMA expression RPAREN statement
    ;

for_init
    : var_decl
    | expr_stmt
    | SEMICOMMA
    ;

if_stmt
    : IF LPAREN expression RPAREN statement %prec "then"
    | IF LPAREN expression RPAREN statement ELSE statement
    ;

print_stmt
    : PRINT expression SEMICOMMA
    ;

return_stmt
    : RETURN SEMICOMMA
    | RETURN expression SEMICOMMA
    ;

while_stmt
    : WHILE LPAREN expression RPAREN statement
    ;

block
    : LBRACE block_declaration_list LBRACE
    ;

expression
    : assignment
    ;

assignment
    : IDENTIFIER ASSIGN assignment
    | call DOT IDENTIFIER ASSIGN assignment
    | logic_or
    ;

logic_or
    : logic_and
    | logic_or OR logic_and
    ;

logic_and
    : equality
    | logic_and AND equality
    ;

equality
    : comparison
    | equality EQ comparison
    | equality NEQ comparison
    ;

comparison
    : term
    | comparison GT term
    | comparison GTE term
    | comparison LT term
    | comparison LTE term
    ;

term
    : factor
    | term ADD factor
    | term MINUS factor
    ;

factor
    : unary
    | factor MUL unary
    | factor DIV unary
    ;

unary
    : NOT unary
    | MINUS unary %prec UMINUS
    | call
    ;

call
    : primary
    | call LPAREN arguments RPAREN
    | call DOT IDENTIFIER
    ;

primary
    : TRUE
    | FALSE
    | NIL
    | THIS
    | NUMBER
    | STRING
    | IDENTIFIER
    | LPAREN expression RPAREN
    | SUPER DOT IDENTIFIER
    ;

function
    : IDENTIFIER LPAREN parameters RPAREN block
    ;

parameters
    : IDENTIFIER
    | parameters COMMA IDENTIFIER
    | /* empty */
    ;

arguments
    : expression
    | arguments COMMA expression
    | /* empty */
    ;

%%

main(int argc, char **argv)
{
#ifdef YYDEBUG
  yydebug = 1;
#endif
 yyparse();
}

yyerror(char *s)
{
 fprintf(stderr, "error: %s\n", s);
}
