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

for /f "tokens=*" %%i in ('wmic cpu get numberofcores /value ^| find "="') do set cores_number=%%i
set /A core_num = %cores_number:~14,15%
set /A limit_cores = 4

for /f "tokens=*" %%f in ('wmic cpu get CurrentClockSpeed /value ^| find "="') do set cores=%%f 
set /A core_speed =  %cores:~18,21%

echo =================%USERNAME%======================
echo Seu CPU tem %core_num% cores e %core_speed% Mhz de velocidade
echo Iniciar programa? Enter - YES 
pause

@echo off
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" (if %core_speed% GTR 2000 (if core_num GTR 6 (start cmd /k call Win10-HIGHEND.bat) else (start cmd /k call Win10-LOWEND.bat)) else (start cmd /k call Win10-LOWEND.bat))
if "%version%" == "6.3"  (if %core_speed% GTR 2000 (if core_num GTR 6 (start cmd /k call Win8-HIGHEND.bat) else (start cmd /k call Win8-LOWEND.bat)) else (start cmd /k call Win8-LOWEND.bat))
if "%version%" == "6.2"  (if %core_speed% GTR 2000 (if core_num GTR 6 (start cmd /k call Win8-HIGHEND.bat) else (start cmd /k call Win8-LOWEND.bat)) else (start cmd /k call Win8-LOWEND.bat))
if "%version%" == "6.1"  (if %core_speed% GTR 2000 (if core_num GTR 6 (start cmd /k call Win7-HIGHEND.bat) else (start cmd /k call Win7-LOWEND.bat)) else (start cmd /k call Win7-LOWEND.bat))
if "%version%" == "6.0"  (if %core_speed% GTR 2000 (if core_num GTR 6 (start cmd /k call Win7-HIGHEND.bat) else (start cmd /k call Win7-LOWEND.bat)) else (start cmd /k call Win7-LOWEND.bat))
rem etc etc
endlocal

