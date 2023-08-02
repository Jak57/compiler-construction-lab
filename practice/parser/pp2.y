%{
#include<stdio.h>
extern int yylex();
void yyerror(char *s);
%}

%token INT FLOAT CHAR DOUBLE IF ELSE WHILE FOR CONTINUE BREAK L_PAREN R_PAREN L_BRACE R_BRACE SEMI NUM DNUM ID ADD SUB MUL DIV MOD INC DEC ASSIGN EQ N_EQ LT LT_EQ GT GT_EQ UNK
%start start

%%

start: Stmt| ;
Stmt: Stmt Expr| ;
Type: INT | FLOAT ;
Expr: Type ID SEMI
    | Type ID ASSIGN NUM SEMI
    | Type ID ASSIGN ID SEMI
    | Type ID GT ID SEMI
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