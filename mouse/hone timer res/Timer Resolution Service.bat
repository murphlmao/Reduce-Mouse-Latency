@echo off
bcdedit /set useplatformtick yes
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798668491921162271/SetTimerResolutionService.exe" -OutFile "%temp%\SetTimerResolutionService.exe"
move "%temp%\SetTimerResolutionService.exe" "C:\"
"C:\SetTimerResolutionService.exe" -install
sc start STR
goto success

:success
SET msgboxTitle=Success
SET msgboxBody=The service has been installed and activated.
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"
exit