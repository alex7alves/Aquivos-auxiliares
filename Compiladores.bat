@echo off

title  Compilando 
echo Criando as bibliotecas...
echo.

cd C:\Portugol-IDE\IDE\lua-5.3.3\src
mingw32-make.exe mingw
cd  C:\Portugol-IDE\IDE\lpeglabel-master
gcc.exe  -c  *.c  -I C:\Portugol-IDE\IDE\lua-5.3.3\src
gcc -shared *.o -o lpeglabel.dll -L C:\Portugol-IDE\IDE\lua-5.3.3\src -llua53
@copy relabel.lua C:\Portugol-IDE\IDE\portugol-master
@copy lpeglabel.dll C:\Portugol-IDE\IDE\lua-5.3.3\src
@SET path = %path% ; C:\Portugol-IDE\IDE\lua-5.3.3\src
@SETX  path  C:\Portugol-IDE\IDE\lua-5.3.3\src
cd C:\Portugol-IDE\IDE\lua-5.3.3\src
ren lua.exe lua53.exe
echo.
echo ***** Concluido *****
pause
exit 


