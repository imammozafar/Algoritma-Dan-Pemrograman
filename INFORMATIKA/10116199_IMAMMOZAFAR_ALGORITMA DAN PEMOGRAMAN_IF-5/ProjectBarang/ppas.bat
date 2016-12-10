@echo off
SET THEFILE=d:\fahmi\pembayaran.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\fahmi\rsrc.o -s   -b base.$$$ -o d:\fahmi\pembayaran.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
