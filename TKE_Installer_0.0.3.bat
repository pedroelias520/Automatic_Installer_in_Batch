@echo off
title Automatized Installer 2020
cd %~dp0
mode 100,8
echo.
color 6f
echo.

echo =================Hello================== 
echo Hello welcome to TKE_Installer 
echo Chossing your system operational 

for /f "tokens=*" %%f in ('wmic cpu get CurrentClockSpeed /value ^| find "="') do set cores=%%f 
set /A core_speed =  %cores:~18,21%

echo =======================================
echo Iniciar programa? Enter - YES 
pause

@echo off
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" (if %core_speed% GTR 1000  (start cmd /k call Win10-HIGHEND.bat) else (start Win10-LOWEND.bat))
if "%version%" == "6.3"  (if %core_speed% GTR 1000  (Win8-HIGHEND.bat) else (Win8-LOWEND.bat))
if "%version%" == "6.2"  (if %core_speed% GTR 1000  (Win8-HIGHEND.bat) else (Win8-LOWEND.bat))
if "%version%" == "6.1"  (if %core_speed% GTR 1000  (Win7-HIGHEND.bat) else (Win7-LOWEND.bat))
if "%version%" == "6.0"  (if %core_speed% GTR 1000  (Win7-HIGHEND.bat) else (Win7-LOWEND.bat))
rem etc etc
endlocal

