%option noyywrap

%{
#include<stdio.h>
int n = 0;
%}

letter [a-zA-Z]
digit [0-9]
id {letter}({letter}|{digit})*
keyword "int"|"for"|"continue"|"getch"
operator "="|"+"|"*"
increment "++"
decrement "--"
separator "{"|"}"|"("|")"|";"

%%
{keyword} {n++; printf("----- Key");}
{id} {n++; printf("----- ID");}
{operator} {n++; printf("---- Operator");}
{separator} {n++; printf("---- Separator");}
{increment} {n++; printf("---- Increment");}
{decrement} {n++; printf("---- Decrement");}
%%

int main() {
yylex();
return 0;

}