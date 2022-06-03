@echo off
powershell Invoke-WebRequest "https://cdn.discordapp.com/attachments/798652558351794196/798666504190296064/Hone_Power_Plan.pow" -OutFile "%temp%\Hone_Power_Plan.pow"
powercfg -import "%temp%\Hone_Power_Plan.pow" 44444444-4444-4444-4444-444444444448
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448"
powercfg /changename 44444444-4444-4444-4444-444444444448 "Hone Ultimate Power Plan" "The Ultimate Power Plan to reduce latency and boost FPS."
powercfg -delete 77777777-7777-7777-7777-777777777777
powercfg -delete 44444444-4444-4444-4444-444444444444
goto success

:success
SET msgboxTitle=Success
SET msgboxBody=The Power Plan has been activated.
SET tmpmsgbox=%temp%\~tmpmsgbox.vbs
IF EXIST "%tmpmsgbox%" DEL /F /Q "%tmpmsgbox%"
ECHO msgbox "%msgboxBody%",0,"%msgboxTitle%">"%tmpmsgbox%"
WSCRIPT "%tmpmsgbox%"





