# compiler-construction-lab
Compiler Construction Lab

# Setup
**Requirements**
```
flex-2.5.4a-1
bison-2.4.1
```

**Running Parser**
```
bison -d pp.y
flex filename.l
gcc pp.tab.c lex.yy.c
.\a.exe
```
