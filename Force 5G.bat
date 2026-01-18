@echo off
title 5G Lock - Keeping That Shit Alive
color 0A
mode con: cols=75 lines=30

cls
echo.
echo    ================================================
echo.
echo     5G LOCK ACTIVATED BABYYY
echo.
echo     Airtel/Jio/Vi force 5G
echo     Lesssss goooo
echo.
echo    ================================================
echo.
echo  [INFO] Ping interval: 5 seconds (keeping network awake)
echo  [INFO] Data: Takes 45 hours to burn 1MB lmao (almost kuch nhi)
echo  [INFO] Requisit: Keep the phone's screen ON (speically for HyperOS folks)
echo  [INFO] CPU: Like 0.01% (dont worry chill)
echo  [INFO] Close: Just close it normally or ctrl+C then Y (ur a nerd)
echo  [INFO] Battery: Meh, 5G modem stays awake (worth it tho)
echo.
echo  WARNING: Close this window = 5G dies immediately
echo  SUCCESS: Keep it open = 5G stays locked babyyy
echo.
echo ------------------------------------------------
echo.

set /a counter=0

:loop
set /a counter+=1

ping -n 1 8.8.8.8 -w 1000 | find "Reply" >nul

if %errorlevel%==0 (
    echo [%time%] Ping #%counter% - 5G LOCKED babyyy ^| Status: ALIVE
) else (
    color 0C
    echo [%time%] Ping #%counter% - OH FUCK! Ping failed ^| Check connection bro
    timeout /t 2 /nobreak >nul
    color 0A
)

set /a hype=counter%%20
if %hype%==0 (
    echo.
    echo    %counter% pings done! W BRO, W.. keep going!
    echo.
)

set /a megahype=counter%%100
if %megahype%==0 (
    echo.
    echo    -----------------------------------------------
    echo     %counter% PINGS COMPLETE! W BRO, W.. keep going.
    echo    -----------------------------------------------
    echo.
)

set /a stats=counter%%50
if %stats%==0 (
    set /a minutes=counter/12
    echo    [STATS] Runtime: ~%minutes% minutes ^| Pings sent: %counter%
)

timeout /t 5 /nobreak >nul
goto loop