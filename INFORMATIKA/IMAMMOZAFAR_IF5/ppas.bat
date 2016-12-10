@echo off
SET THEFILE=d:\data_m~1\101161~1\imammo~1\pilihan.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  D:\DATA_M~1\101161~1\IMAMMO~1\rsrc.o -s   -b base.$$$ -o d:\data_m~1\101161~1\imammo~1\pilihan.exe link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
