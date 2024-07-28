%{
#include "parser.tab.h"
%}
%%

"class" { return CLASS; }
"fun" { return FUN; }
"if" { return IF; }
"var" { return VAR; }
"else" { return ELSE; }
"for" { return FOR; }
"while" { return WHILE; }
"return" { return RETURN; }
"print" { return PRINT; }
"super" { return SUPER; }
"true"      { return TRUE; }
"false"     { return FALSE; }
"nil"       { return NIL; }
"this"      { return THIS; }
"=" { return ASSIGN;}
"==" { return EQ; }
"!=" { return NEQ; }
"<=" { return LTE; }
">=" { return GTE; }
">" { return GT; }
"<" { return LT; }
"or" { return OR; }
"and" { return AND; }
"!" { return NOT; }
"+" { return ADD; }
"-" { return MINUS; }
"/" { return DIV; }
"*" { return MUL; }
"**" { return POW; }
"%" { return REM; }
"(" { return LPAREN; }
")" { return RPAREN; }
"{" { return LBRACE; }
"}" { return RBRACE; }
"."     { return DOT; }
","     { return COMMA; }
";"     { return SEMICOMMA; }
"\n" { return EOL; }
[a-zA-Z_][a-zA-Z_0-9]* { return IDENTIFIER; }
[0-9]+(\.[0-9]+)? { return NUMBER; }
\"[^\"]*\"   { return STRING; }
%%

