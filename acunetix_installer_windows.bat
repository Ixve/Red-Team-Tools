@REM Acunetix Windows installer script made by ixve for Red-Team-Tools
echo off
cls

cls
echo.&&echo.
echo ^[0^/7^] Checking for Administrator rights...
mkdir "%windir%\system32\test" 1>nul2>nul
if "%errorlevel%" == "0" (
rmdir "%windir%\system32\test" & echo User is Administrator, continuing
) else (
echo User is not Administrator, please re-run script as admin. && pause && exit /b 1
)

cls
echo.&&echo.
echo ^[1^/7^] Adding entries to hosts file
echo. >> %windir%\System32\drivers\etc\hosts
echo. >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1  erp.acunetix.com >> %windir%\System32\drivers\etc\hosts
echo 127.0.0.1  erp.acunetix.com. >> %windir%\System32\drivers\etc\hosts
echo ::1  erp.acunetix.com >> %windir%\System32\drivers\etc\hosts
echo ::1  erp.acunetix.com. >> %windir%\System32\drivers\etc\hosts
echo. >> %windir%\System32\drivers\etc\hosts
echo 192.178.49.174  telemetry.invicti.com >> %windir%\System32\drivers\etc\hosts
echo 192.178.49.174  telemetry.invicti.com. >> %windir%\System32\drivers\etc\hosts
echo 2607:f8b0:402a:80a::200e  telemetry.invicti.com >> %windir%\System32\drivers\etc\hosts
echo 2607:f8b0:402a:80a::200e  telemetry.invicti.com. >> %windir%\System32\drivers\etc\hosts

cls
echo.&&echo.
echo ^[2^/7^] Running Acunetix installer, please make sure to install to the default directory.
start /wait acunetix_25.1.250204093.exe 1>nul2>nul

cls
echo.&&echo.
echo ^[3^/7^] Stopping Acunetix services
net stop "Acunetix" 1>nul2>nul
net stop "Acunetix Database" 1>nul2>nul

cls
echo.&&echo.
echo ^[4^/7^] Removing wvsc file in default Acunetix install directory
del "C:\Program Files (x86)\Acunetix\25.1.250204093\wvsc.exe" 1>nul2>nul
echo Moving patched wvsc file to default Acunetix install directory
move wvsc.exe "C:\Program Files (x86)\Acunetix\25.1.250204093\" 1>nul2>nul

cls
echo.&&echo.
echo ^[5^/7^] Removing Acunetix license directory
rmdir /s /q C:\ProgramData\Acunetix\shared\license\ 1>nul2>nul
echo Re-making Acunetix license directory
mkdir C:\ProgramData\Acunetix\shared\license 1>nul2>nul
echo Moving license_info.json and wa_data.dat to Acunetix license directory
move license_info.json C:\ProgramData\Acunetix\shared\license\ 1>nul2>nul
move wa_data.dat C:\ProgramData\Acunetix\shared\license\ 1>nul2>nul
echo Setting license_info.json and wa_data.dat as read-only
attrib +r C:\ProgramData\Acunetix\shared\license\*.* /s 

cls
echo.&&echo.
echo ^[6^/7^] Re-starting Acunetix services
net start "Acunetix" 1>nul2>nul
net start "Acunetix Database" 1>nul2>nul

cls
echo.&&echo.
echo ^[7^/7^] Opening Acunetix dashboard
start https://127.0.0.1:3443

cls
echo.&&echo.
echo Work complete, enjoy your Acunetix install
timeout 5
exit /b 1
