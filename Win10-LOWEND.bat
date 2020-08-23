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
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

if %OS%==32BIT (
ECHO Instalando requisitos mínimos
start vcredist_x86.exe /Q
start vcredist_x86_2015.exe /Q
)

if %OS%==64BIT (
ECHO Instalando requisitos mínimos
start vcredist_x64.exe /Q
start vcredist_x64_2015.exe /Q
)


pause 

echo Instalando - Driver Booster 
start driver_booster_setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo ------Driver Booster Instalado------

echo Instalando - Google Chrome 
start ChromeSetup.exe
echo ------Google Chrome Instalado------

echo Instalando - DoroPDF
start DoroSetup.exe /Silent
echo ------DoroPDF Instalado------

echo Instalando - Firefox Navigator
start Firefox_Installer.exe
echo ------Firefox Instalado------

echo Instalando - Java 
start jre-8u261-windows-x64.exe /s 
echo ------Java Instalado------

echo Instalando - K-lite
start k-lite-codec-pack-mega-15-6-0.exe /verysilent
echo ------K-lite Instalado------

echo Instalando - Nero 8 
start Nero-8.3.6.0_ptb_trial.exe
start Serial.txt
echo ------Nero 8 Instalado------

echo Instalando - Teamviewer 
start /wait TeamViewer_Setup.exe /S /norestart
echo ------Teamviewer Instalado------

echo Instalando - Anydesk 
start AnyDesk.exe --silent --create-shortcuts --create-desktop-icon
echo ------Anydesk Instalado------

echo Instalando - Winrar 
start winrar-x64-591.exe /S 
echo ------Winrar Instalado------

cd Microsoft Office 2010 - By Smith BR
start setup.exe
echo ------Microsoft Office 2010 Instalado------

cd ..
pause

echo Instalando - Adobe 
start readerdc_br_gi_cra_install.exe /msi EULA_ACCEPT=YES /qn 
echo ------Adobe Instalado------

pause 

echo Instalando - Avira 
start avira_setup.exe
echo ------Avira Instalado------

echo "Todos os programs foram instalados!"
pause
