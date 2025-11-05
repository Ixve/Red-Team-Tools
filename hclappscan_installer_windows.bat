@REM Simple HCL AppScan installer - ixve @ github.com/ixve/red-team-tools
echo off
cls

echo.
echo [1/3] Installing HCL AppScan...
start /wait "" HCL_AppScan.exe /S /v/qn 1>nul 2>nul

cls
echo.
echo [2/3] Killing process...
taskkill /F /IM AppScanGUI.exe /T 1>nul 2>nul

cls
echo.
echo [3/3] Patching...
xcopy /Y /I "crack\AppScanSDK.dll" "C:\Program Files (x86)\HCL\AppScan Standard\" 1>nul 2>nul
xcopy /Y /I "crack\HclLicenseProvider.dll" "C:\Program Files (x86)\HCL\AppScan Standard\" 1>nul 2>nul

echo.&&echo.
echo Crack by Pwn3rzs - Zen
echo Enjoy :3
timeout /T 3
exit
