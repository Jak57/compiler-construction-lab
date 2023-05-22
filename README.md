# compiler-construction-lab
Compiler Construction Lab

# Topics
* Lab1: Lexical Analyzer
* Lab2: Parser

# Setup
**Requirements**
```
flex-2.5.4a-1
bison-2.4.1
```
**Running Lexer**
```
flex filename.l
gcc lex.yy.c
.\a.exe
```

**Running Parser**
```
bison -d pp.y
flex filename.l
gcc pp.tab.c lex.yy.c
.\a.exe
```
