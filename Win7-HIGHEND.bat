@echo off
title Automatized Installer 2020
cd %~dp0
cd Programs
mode 100,8
echo.
color 1f
echo.
@echo====================Programs==============================
echo.
echo Windows 7 - Highend

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

for /f "tokens=3 delims=: " %%a in ('cscript //nologo "%systemroot%\system32\slmgr.vbs" /dli ^| find "License Status:"' ) do set licenseStatus=%%a
set win = %licenseStatus%
if "%win%" == "Licensed" ( ECHO %win% ) else ( ECHO %win% )

if %OS%==32BIT (
ECHO Instalando requisitos mínimos
start vcredist_x86.exe /Q
start VC_redistx862015.exe /Q
start 3DP_Net_v1911.exe 
start winrar-x86-591.exe /S 
start jre-8u261-windows-x86.exe /s 
)

if %OS%==64BIT (
ECHO Instalando requisitos mínimos
start vcredist_x64.exe /Q
start VC_redistx642015.exe /Q
start 3DP_Net_v1911.exe 
start winrar-x64-591.exe /S 
start jre-8u261-windows-x64.exe /s 
)


pause 

echo Instalando - Driver Booster 
start driver_booster_setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo ------Driver Booster Initiated------

echo Instalando - Google Chrome 
start ChromeSetup.exe
echo ------Google Chrome Initiated------

echo Instalando - DoroPDF
start DoroSetup.exe /Silent
echo ------DoroPDF Initiated------

echo Instalando - Firefox Navigator
start Firefox_Installer.exe
echo ------Firefox Initiated------

echo Instalando - K-lite
start k-lite-codec-pack-mega-15-6-0.exe /verysilent
echo ------K-lite Initiated------

echo Instalando - Nero 8 
start Nero-8.3.6.0_ptb_trial.exe
start Serial.txt
echo ------Nero 8 Initiated------

echo Instalando - Anydesk 
start AnyDesk.exe --silent --create-shortcuts --create-desktop-icon
echo ------Anydesk Initiated------

echo Instalando - Teamviewer 
start /wait TeamViewer_Setup.exe /S /norestart
echo ------Teamviewer Initiated------

cd Microsoft Office 2010 - By Smith BR
start setup.exe
echo ------Microsoft Office 2010 Initiated------

cd ..
pause

echo Instalando - Adobe 
start readerdc_br_gi_cra_install.exe /msi EULA_ACCEPT=YES /qn 
echo ------Adobe Initiated------

pause 


echo Instalando - Kaspesky 
start kts20.0.14.1085abcdefghijpt_19523.exe /s 
echo ------Kaspesky Initiated------


echo "Todos os programs foram instalados!"
pause
