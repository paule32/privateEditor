E:\msys64\usr\bin\flex.exe     -Pbasic  BasicDSL.l

E:\msys64\usr\bin\bison.exe -d -ppascal PascalDSL.y
E:\msys64\usr\bin\flex.exe     -Ppascal PascalDSL.l

E:\msys64\usr\bin\bison.exe -d -pdbase  dBaseDSL.y
E:\msys64\usr\bin\flex.exe     -Pdbase  dBaseDSL.l

pause
