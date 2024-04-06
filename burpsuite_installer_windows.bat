echo off
title B.S.I.H.
cls
echo Welcome to B.S.I.H. (Burp Suite Install Helper)
echo.
echo.

REM Getting wget.exe using PowerShell "LOLBAS" (Alternative to BitsAdmin)
echo Grabbing wget.exe via PowerShell.
powershell -exec bypass -command "Import-Module BitsTransfer; Start-BitsTransfer 'https://hyperos-script-store.pages.dev/wget.exe' 'wget.exe'"
cls

REM Checking if user has a proper Java version installed
:javacheck
echo Do you have Java 17+ installed?
echo [1] Yes
echo [2] Check (Attempts to run "java -version")
echo [0] No
echo.
choice /c 120 /n /m ">> "
if %ERRORLEVEL%==1 cls
if %ERRORLEVEL%==2 cls && start cmd /k "java -version && pause && exit" && goto javacheck
if %ERRORLEVEL%==3 (
cls
echo Downloading OpenJDK 21
wget.exe --no-check-certificate -q --show-progress -O OpenJDK.msi "https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.2+13/OpenJDK21U-jdk_x64_windows_hotspot_21.0.2_13.msi"
echo.
echo Installing OpenJDK
msiexec /i OpenJDK.msi /qb! /l*v openjdk_install.log
echo Done
)
cls

REM Grabbing Burp Suite from the official servers and installing with unattended mode
echo Downloading Burp Suite
REM wget.exe --no-check-certificate -q --show-progress -O BurpSuiteInstaller.exe "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2023.6.1&type=WindowsX64"
echo.
echo Running installer
REM BurpSuiteInstaller.exe -q -dir 'C:\Program Files\' -overwrite -nofilefailures -splash "Burp Suite Installer" -console

REM Moving and running keygen
cls
echo Copying BurpLoaderKeygen.jar to installed folder
copy Crack\BurpLoaderKeygen.jar "C:\Program Files\BurpSuitePro\" 1>nul2>nul
echo Running BurpLoaderKeygen.jar
start java -jar "C:\Program Files\BurpSuitePro\BurpLoaderKeygen.jar"

REM User interaction required
cls
echo.
echo.

REM The blob below is just a warning sign, you can print it yourself in a seperate batch file if you don't trust me
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^!^!^!^!^!^!^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^:^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_
echo ^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_^_                                                                
echo.
echo.
echo User interaction is required from this point on
echo You will be guided from the console on what you have to do
pause
pause
cls
echo.
echo.
echo.
echo 1. Run Burp Suite from the keygen by pressing the Run button
echo.
echo 2. Agree to the Burp Suite license agreement
echo.
echo 3. Copy the license from the keygen and paste it into the license text box located inside Burp Suite and press next
echo.
echo 4. Locate and press "Manual Activation", then press "Copy Request"
echo.
echo 5. Tab back into the keygen and paste the request into the text box on the right side
echo.
echo 6. Copy the activation resposne back into Burp Suite, then press Next -^> Finish -^> Next -^> Start Burp
echo.
echo 7. Enjoy.
echo.
echo.
pause

REM Removing files that are no longer needed
echo Deleting extra files
del /q /f wget.exe 2>nul
del /q /f BurpSuiteInstaller.exe 2>nul
del /q /f .wget-hsts 2>nul
echo Killing java.exe (BurpKeygenLoader.jar)
taskkill /f /im java.exe 1>nul2>nul
echo Script finished, goodbye.
exit /b 1
