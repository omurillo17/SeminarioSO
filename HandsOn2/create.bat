@echo off
echo Hola Mundo > mytext.txt
echo.
type mytext.txt
echo.
mkdir backup
echo.
copy mytext.txt backup
echo.
dir backup
echo.
del backup\mytext.txt
rmdir backup
