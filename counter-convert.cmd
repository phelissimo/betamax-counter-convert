@echo off
title Betamax-Counter Converter

:menu
cls
echo             MENU
echo.
echo   //////////////////////////
echo   /                        /
echo   / [1] DIVISION BY 60     /
echo   / [2] NO DIVISION BY 60  /
echo   /                        /
echo   //////////////////////////
echo.
echo.
echo OVERVIEW
echo ---------------------------
echo  750 = 25min
echo  900 = 30min
echo 1800 = 60min
echo 2700 = 90min
echo 3600 = 120min
echo.
echo.
set /p eingabe=type here: 
if /i %eingabe%==1 GOTO 2
if /i %eingabe%==2 GOTO 1

:1
cls
set /p zahl=counter: 
set /a ERG=%zahl%*2
echo.
echo OUTPUT:
echo %ERG%s
echo ------------
echo DONE!
pause>nul
cls
exit

:2
cls
set /p zahl=counter: 
set /a ERG=%zahl%*2

cls
echo.
echo Continue... (ENTER)

pause>nul
cls
echo counter: %zahl%
echo.
set /a ERG2=%ERG%/60
echo OUTPUT:
echo %ERG2%min
echo ------------
echo DONE!
pause>nul
goto :menu