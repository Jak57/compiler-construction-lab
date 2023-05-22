%option noyywrap

%{
#include "pp.tab.h"
%}

digit [0-9]
letter [a-zA-Z]
id (_|{letter})({letter}|{digit})*
number ({digit})+
ws [ \t\n]
delim ({ws})+

%%
{delim} {}
"int" {return INT;}
"float" {return FLOAT;}
";" {return SEMI;}
"=" {return ASSIGN;}
">" {return GT;}
{letter} {return ID;}
{number} {return NUM;}
%%