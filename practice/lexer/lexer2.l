%{
#include<stdio.h>
%}

%option noyywrap

%%

"int"                   { printf("INT\n"); }
"float"                 { printf("FLOAT\n"); }
"char"                  { printf("CHAR\n"); }
"double"                { printf("DOUBLE\n"); }
"if"                    { printf("IF\n"); }
"else"                  { printf("ELSE\n"); }
"while"                 { printf("WHILE\n"); }
"for"                   { printf("FOR\n"); }
"continue"              { printf("CONTINUE\n"); }
"break"                 { printf("BREAK\n"); }

"("                     { printf("L_PAREN\n"); }
")"                     { printf("R_PAREN\n"); }
"{"                     { printf("L_BRACE\n"); }
"}"                     { printf("R_BRACE\n"); }
";"                     { printf("SEMI\n"); }

[0-9]+                  { printf("NUM\n"); }
[0-9]+"."[0-9]+         { printf("DNUM\n"); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("ID\n"); }

"+"                     { printf("ADD\n"); }
"-"                     { printf("SUB\n"); }
"*"                     { printf("MUL\n"); }
"/"                     { printf("DIV\n"); }
"%"                     { printf("MOD\n"); }

"++"                    { printf("INC\n"); }
"--"                    { printf("DEC\n"); }

"="                     { printf("ASSIGN\n"); }
"=="                    { printf("EQ\n"); }
"!="                    { printf("N_EQ\n"); }
"<"                     { printf("LT\n"); }
"<="                    { printf("LT_EQ\n"); }
">"                     { printf("GT\n"); }
">="                    { printf("GT_EQ\n"); }

[ \t\n]                 {  }
.                       { printf("UNK\n"); }

%%

int main()
{
    yylex();
    return 0;
}