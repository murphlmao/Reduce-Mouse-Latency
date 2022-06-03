@echo off
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798652651906531339/defaultX.uxf" -OutFile "%temp%\defaultX.uxf"
move "%temp%\defaultX.uxf" "C:\Program Files (x86)\MSI Afterburner\Skins\defaultX.uxf"
goto success

:success
SET msgboxTitle=Success
SET msgboxBody=The skin has been imported.
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"