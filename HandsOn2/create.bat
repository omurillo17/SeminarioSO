@echo off
echo Creando el archivo mytext.txt con la cadena "Hola Mundo"...
echo Hola Mundo > mytext.txt
echo.
echo Desplegando el contenido del archivo mytext.txt:
type mytext.txt
echo.
echo Creando un subdirectorio llamado backup...
mkdir backup
echo.
echo Copiando mytext.txt al subdirectorio backup...
copy mytext.txt backup
echo.
echo Listando el contenido del subdirectorio backup:
dir backup
echo.
echo Eliminando mytext.txt del subdirectorio backup...
del backup\mytext.txt
echo Eliminando el subdirectorio backup...
rmdir backup
