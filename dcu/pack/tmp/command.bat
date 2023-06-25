@echo off
echo compile file...
@echo on
..\bin\yasm pe32.asm -o pe32.exe
@echo off
del *.asm
pause