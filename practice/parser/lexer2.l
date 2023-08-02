%{
#include "pp2.tab.h"
%}

%option noyywrap

%%

"int"                   { return INT; }
"float"                 { return FLOAT; }
"char"                  { return CHAR; }
"double"                { return DOUBLE; }
"if"                    { return IF; }
"else"                  { return ELSE; }
"while"                 { return WHILE; }
"for"                   { return FOR; }
"continue"              { return CONTINUE; }
"break"                 { return BREAK; }

"("                     { return L_PAREN; }
")"                     { return R_PAREN; }
"{"                     { return L_BRACE; }
"}"                     { return R_BRACE; }
";"                     { return SEMI; }

[0-9]+                  { return NUM; }
[0-9]+"."[0-9]+         { return DNUM; }
[a-zA-Z_][a-zA-Z0-9_]*  { return ID; }

"+"                     { return ADD; }
"-"                     { return SUB; }
"*"                     { return MUL; }
"/"                     { return DIV; }
"%"                     { return MOD; }

"++"                    { return INC; }
"--"                    { return DEC; }

"="                     { return ASSIGN; }
"=="                    { return EQ; }
"!="                    { return N_EQ; }
"<"                     { return LT; }
"<="                    { return LT_EQ; }
">"                     { return GT; }
">="                    { return GT_EQ; }

[ \t\n]                 {  }
.                       { return UNK; }

%%
