@echo off

:MENU
echo **********MENU*************
echo 1 -Copiar Directorio
echo 2 -Eliminar Directorio
echo 3 -Salir
echo ****************************

set /p opcion=
if %opcion%==1 goto :Copiar
if %opcion%==2 goto :Eliminar
if %opcion%==3 goto :Salir

:Copiar
set /p origen=origen_directorio: 
set /p destino=destino: 
xcopy /e "%origen%" "%destino% \%date:~5,2%-%date:~8,2%-%date:~11,4%-%time:~0,2%-%time:~3,2%-%time:~6,2%"
goto :MENU

:Eliminar
rmdir /s /q D:\Documentos2
echo el archivo se ha eliminado.
goto :MENU

:Salir
echo Gracias por usar este programa.
Exit