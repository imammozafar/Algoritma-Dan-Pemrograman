@echo off
SET THEFILE=c:\docume~1\alluse~1\docume~1\imam\informatika\10116199_imammozafar_algoritma dan pemograman_if-5\imammozafar_if5\probar.exe
echo Linking %THEFILE%
c:\dev-pas\bin\ldw.exe  -s   -b base.$$$ -o "c:\docume~1\alluse~1\docume~1\imam\informatika\10116199_imammozafar_algoritma dan pemograman_if-5\imammozafar_if5\probar.exe" link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
