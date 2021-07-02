@echo off
set /p target="Enter Computer Name (eg. WE7490-JJ5BVU6): "

echo %target% | findstr /r "WE[0-9][0-9][0-9][0-9]-[A-Z0-9]*" >nul 2>&1 && (echo Computer Name OK!) || (echo Invalid Computer Name && goto FIN)

SET "target1=%target:~2%"
SET "modelnum=%target1:~0,-8%"

echo %modelnum%

xcopy C:\temp\%modelnum%\* \\%target%\c$\temp\%modelnum% /i
PsExec.exe \\%target% cmd /c "powershell.exe -executionpolicy bypass -windowstyle hidden -noninteractive -nologo -file C:\temp\%modelnum%\Dell.ps1 && DEL C:\temp\%modelnum%\Dell.ps1"

:FIN
PAUSE
