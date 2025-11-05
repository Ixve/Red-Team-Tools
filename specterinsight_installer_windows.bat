@REM SpecterInsight C2 Install Script - ixve @ github.com/ixve/red-team-tools

echo off
setlocal enabledelayedexpansion
cls

echo.
echo ^[1^/5^] cURL check

where curl >nul 2>&1
if %ERRORLEVEL%==0 (
echo [OK] cURL installed
) else (
echo.
echo [ERR] cURL missing
mkdir %TEMP%\curl
echo [1/3] Downloading...
powershell -Command "Invoke-WebRequest -Uri 'https://curl.se/windows/dl-8.17.0_1/curl-8.17.0_1-win64-mingw.zip' -OutFile '%TEMP%\curl\curl.zip' -UseBasicParsing" 1>nul 2>nul
echo [2/3] Extracting...
powershell -Command "Expand-Archive -Path '%TEMP%\curl\curl.zip' -DestinationPath '%TEMP%\curl\' -Force" 1>nul 2>nul
echo [3/3] Moving...
xcopy /Y /I "%TEMP%\curl\curl-8.17.0_1-win64-mingw\bin\curl.exe" "%SYSTEMROOT%\System32\" 1>nul 2>nul
xcopy /Y /I "%TEMP%\curl\curl-8.17.0_1-win64-mingw\bin\curl-ca-bundle.crt" "%SYSTEMROOT%\System32\" 1>nul 2>nul
echo [OK] cURL installed
rmdir /s /q %TEMP%\curl\
echo.
)

cls
echo.
echo ^[2^/5^] Prerequisites check

set POSTGRESQL_FOUND=
set ASPNET_FOUND=
set NETRUN_FOUND=

for /f "tokens=*" %%r in ('dotnet --list-runtimes 2^>nul ^| findstr /r /c:"^Microsoft\.NETCore\.App 9\.0\.10 "' ) do (
set NETRUN_FOUND=1
)

for /f "tokens=*" %%r in ('dotnet --list-runtimes 2^>nul ^| findstr /i "Microsoft.AspNetCore.App"') do (
set ASPNET_FOUND=1
)

for /f "tokens=*" %%K in ('reg query "HKLM\SOFTWARE\PostgreSQL\Installations" 2^>nul') do (
    set POSTGRESQL_FOUND=1
)

if defined NETRUN_FOUND (
echo [OK] .NET Runtime v9.0.10 installed
) else (
echo.
echo [ERR] .NET Runtime v9.0.10 missing
echo [1/2] Downloading installer...
curl -k -L -s -o net-runtime.exe "https://builds.dotnet.microsoft.com/dotnet/Runtime/9.0.10/dotnet-runtime-9.0.10-win-x64.exe"
echo [2/2] Installing...
start /wait "" net-runtime.exe /quiet /norestart
echo [OK] .NET Runtime v9.0.10 installed
echo.
)

if defined ASPNET_FOUND (
echo [OK] ASP.NET Core installed
) else (
echo.
echo [ERR] ASP.NET Core missing
echo [1/2] Downloading installer...
curl -k -L -s -o aspnet-core.exe "https://builds.dotnet.microsoft.com/dotnet/aspnetcore/Runtime/9.0.10/aspnetcore-runtime-9.0.10-win-x64.exe"
echo [2/2] Installing...
start /wait "" aspnet-core.exe /quiet /norestart
echo [OK] ASP.NET Core installed
echo.
)

if defined POSTGRESQL_FOUND (
echo [OK] PostgreSQL installed
) else (
echo.
echo [ERR] PostgreSQL missing
echo [1/2] Downloading installer...
curl -k -O -s https://get.enterprisedb.com/postgresql/postgresql-18.0-2-windows-x64.exe
echo [2/2] Installing ^(This might take a while^)...
start /wait "" postgresql-18.0-2-windows-x64.exe --mode unattended --unattendedmodeui none --superpassword "postgres"
echo [OK] PostgreSQL installed
echo.
)

cls
echo.
echo ^[3^/5^] Cleanup
del net-runtime.exe 1>nul 2>nul
del aspnet-core.exe 1>nul 2>nul
del postgresql-18.0-2-windows-x64.exe 1>nul 2>nul

cls

echo.
echo ^[4^/5^] Modifying HOSTS file
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo.
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo 127.0.0.1 www.practicalsecurityanalytics.com
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo 127.0.0.1 www.practicalsecurityanalytics.com.
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo 127.0.0.1 practicalsecurityanalytics.com
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo 127.0.0.1 practicalsecurityanalytics.com.
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo ::1 www.practicalsecurityanalytics.com
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo ::1 www.practicalsecurityanalytics.com.
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo ::1 practicalsecurityanalytics.com
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo ::1 practicalsecurityanalytics.com.
>> "%SYSTEMROOT%\System32\drivers\etc\hosts" echo.

cls
echo.
echo ^[5^/5^] Starting server and client
start SpecterInsight\server\SpecterInsight.Server.Host.exe 1>nul 2>nul
start SpecterInsight\client\SpecterInsight.UI.exe

cls
echo.
echo.
echo Work complete, enjoy ^:3
timeout /T 5
exit
