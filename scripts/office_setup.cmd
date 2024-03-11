:: startup
@echo off
title Office Setup
set dir_path=%1

:opl
cls
set /p open_link="Open link to preset creation site? (y/n): "
if %open_link%==y goto:link
if %open_link%==n goto:ofs
goto:opl

:ofs
copy "%dir_path%\assets\bin\office_setup.exe" "C:\office_setup.exe" /y
dir "%dir_path%\assets\setup_xml\"
set /p xml="Name of preset (w/ .xml): "
"C:\office_setup.exe" /configure "%dir_path%\assets\setup_xml\%xml%"
exit

:link
start https://config.office.com/deploymentsettings
echo:Place .xml file in "%dir_path%\assets\setup_xml"
echo:press any key to exit script...
pause >nul
exit