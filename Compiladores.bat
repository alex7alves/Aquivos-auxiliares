@echo off

title  Compilando 
echo Criando as bibliotecas...


cd C:\Portugol-IDE\IDE\lua-5.2.4\src
mingw32-make.exe mingw
cd  C:\Portugol-IDE\IDE\lpeglabel-0.12.2
gcc.exe  -c  *.c  -I C:\Portugol-IDE\IDE\lua-5.2.4\src
gcc -shared *.o -o lpeglabel.dll -L C:\Portugol-IDE\IDE\lua-5.2.4\src -llua52
@copy relabel.lua C:\Portugol-IDE\IDE\portugol-master
@copy lpeglabel.dll C:\Portugol-IDE\IDE\lua-5.2.4\src
@SET path = %path% ; C:\Portugol-IDE\IDE\lua-5.2.4\src
@SETX  path  C:\Portugol-IDE\IDE\lua-5.2.4\src

cd C:\Portugol-IDE\IDE\lua-5.2.4\src

@copy lpeglabel.dll C:\Portugol-IDE\IDE\Executaveis
@copy lua.exe C:\Portugol-IDE\IDE\Executaveis
@copy luac.exe C:\Portugol-IDE\IDE\Executaveis
@copy lua52.dll C:\Portugol-IDE\IDE\Executaveis


echo ***** Concluido *****
pause
exit 


