@echo off
title Betamax-Zaehlwerk Rechner

:menu
cls
echo MENU
echo.
echo //////////////////////////////
echo /                            /
echo / [1] MIT DIVISION DURCH 60  /
echo / [2] OHNE DIVISION DURCH 60 /
echo /                            /
echo //////////////////////////////
echo.
echo.
echo KURZ-UEBERSICHT
echo ---------------------------
echo  750 = 25min
echo  900 = 30min
echo 1800 = 60min
echo 2700 = 90min
echo 3600 = 120min
echo.
echo.
set /p eingabe=Eingabefeld: 
if /i %eingabe%==1 GOTO 2
if /i %eingabe%==2 GOTO 1

:1
cls
set /p zahl=Zaehlwerk: 
set /a ERG=%zahl%*2
echo.
echo ERGEBNIS:
echo %ERG%s
echo ------------
echo FERTIG!
pause>nul
cls
exit

:2
cls
set /p zahl=Zaehlwerk: 
set /a ERG=%zahl%*2

cls
echo.
echo Weiter... (ENTER)

pause>nul
cls
echo Zaehlwerk: %zahl%
echo.
set /a ERG2=%ERG%/60
echo ERGEBNIS:
echo %ERG2%min
echo ------------
echo FERTIG!
pause>nul
goto :menu