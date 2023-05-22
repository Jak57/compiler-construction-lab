%{
#include<stdio.h>
extern int yylex();
void yyerror(char *s);
%}

%token INT FLOAT ID NUM SEMI ASSIGN GT
%start start

%%

start: Stmt| ;
Stmt: Stmt Expr| ;
Type: INT|FLOAT;
Expr: Type ID SEMI
	|Type ID ASSIGN NUM SEMI
	|Type ID GT ID SEMI
	;

%%

void yyerror(char *s)
{
fprintf(stderr, "Error: %s\n", s);
}

int main()
{
yyparse();
return 0;
}