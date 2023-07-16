bison.exe -d dBaseDSL.y
flex.exe     dBaseDSL.l
sed -i "s/exit\(.*\)\;//" lex.yy.c
pause
