@echo off
reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v CmdLine /t REG_SZ /d "C:\Program Files\TheNewDOS\dualboot.bat" /f
reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupPhase /t REG_DWORD /d 2 /f
reg.exe add HKEY_LOCAL_MACHINE\SYSTEM\Setup /v SetupType /t REG_DWORD /d 1 /f
@echo Rebooting....
@echo off
shutdown -r -t 0 
