@echo off
cd C:\Program Files\TheNewDOS
mode 86,30
title Select System
@echo Who system do you want to startup? (Dos or Windows)
@echo off
set /p system= %=%
if [%system%]==[Windows] reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupType /t REG_DWORD /d 0 /f & reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupPhase /t REG_DWORD /d 0 /f & reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v CmdLine /t REG_SZ /d "" /f & exit
if [%system%]==[Dos] cls & title "The New DOS" &  dos.bat
