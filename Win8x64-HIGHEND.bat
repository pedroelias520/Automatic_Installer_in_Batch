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
echo Instalando - Driver Booster 
start driver_booster_setup.exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
echo ------Driver Booster Instalado------

echo Instalando - Google Chrome 
start ChromeSetup.exe /silent /install 
echo ------Google Chrome Instalado------

echo Instalando - DoroPDF
start cscript.exe install_archive.vbs "DoroSetup.zip" "DoroSetup.exe /Silent
echo ------DoroPDF Instalado------

echo Instalando - Firefox Navigator
start Firefox Installer.exe /S
echo ------Firefox Instalado------

echo Instalando - Java 
start jre-8u261-windows-x64.exe /s 
echo ------Java Instalado------

echo Instalando - K-lite
start k-lite-codec-pack-mega-15-6-0.exe /verysilent
echo ------K-lite Instalado------

echo Instalando - Kaspesky 
start kts20.0.14.1085abcdefghijpt_19523.exe /s 
echo ------Kaspesky Instalado------

echo Instalando - Nero 8 
start Nero-8.3.6.0_ptb_trial.exe
echo ------Nero 8 Instalado------

echo Instalando - Adobe 
start readerdc_br_gi_cra_install.exe /msi EULA_ACCEPT=YES /qn 
echo ------Adobe Instalado------

echo Instalando - Teamviewer 
start /wait TeamViewer_Setup.exe /S /norestart
echo ------Teamviewer Instalado------

echo Instalando - Winrar 
start winrar-x64-591.exe /S 
echo ------Winrar Instalado------

echo Instalando - 3DP_NET 
start 3DP_Net_v1911.exe 
echo ------3DP_NET Instalado------

cd Microsoft Office 2010 - By Smith BR
start setup.exe
echo ------Microsoft Office 2010 Instalado------