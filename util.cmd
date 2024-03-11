:: startup
@echo off
title Windows Script Launcher
cls

:: ----------------------------------------------------
:: Menu
:Menu
cls
echo:    __________________________________________________
echo:
echo:      [1] WinUtil         ^| (Chris Titus Tech)
echo:      [2] MAS             ^| (MassGrave)
echo:      [3] Office Scrubber ^| (abbodi1406 BatUtil)
echo:      [4] Office Setup    ^| (Office deployment tool)
echo:      [0] exit            ^|
echo:    __________________________________________________

choice /c:123456780 /n
set _erl=%errorlevel%

if %_erl%==9 cls && exit
if %_erl%==8 goto:Menu
if %_erl%==7 goto:Menu
if %_erl%==6 goto:Menu
if %_erl%==5 goto:Menu
if %_erl%==4 goto:ose
if %_erl%==3 goto:ofs
if %_erl%==2 goto:mas
if %_erl%==1 goto:win

:: ----------------------------------------------------
:: WinUtil 
:win
powershell -command "irm https://christitus.com/win | iex"
goto:Menu

:: MassGrave Activation Script
:mas
powershell -command "irm https://massgrave.dev/get | iex"
goto:Menu

:: Office Scrubber
:ofs
powershell -command ".\scripts\OfficeScrubber\OfficeScrubber.cmd"
goto:Menu

:: Office Setup
:ose
@powershell Start-Process -Verb runas -FilePath ".\scripts\office_setup.cmd" -ArgumentList "$PWD"
goto:Menu