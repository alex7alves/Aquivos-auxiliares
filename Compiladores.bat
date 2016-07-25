@echo off

title  Compilando 
echo Criando as bibliotecas...
echo.

cd C:\QuoGol-IDE\IDE\lua-5.3.3\src
mingw32-make.exe mingw
cd  C:\QuoGol-IDE\IDE\lpeglabel-master
gcc.exe  -c  *.c  -I C:\QuoGol-IDE\IDE\lua-5.3.3\src
gcc -shared *.o -o lpeglabel.dll -L C:\QuoGol-IDE\IDE\lua-5.3.3\src -llua53
@copy relabel.lua C:\QuoGol-IDE\IDE\portugol-master
@copy lpeglabel.dll C:\QuoGol-IDE\IDE\lua-5.3.3\src
@SET path = %path% ; C:\QuoGol-IDE\IDE\lua-5.3.3\src
@SETX  path  C:\QuoGol-IDE\IDE\lua-5.3.3\src
cd C:\QuoGol-IDE\IDE\lua-5.3.3\src
ren lua.exe lua53.exe
echo.
echo ***** Concluido *****
pause
exit 


