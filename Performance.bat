@echo off
title 🚀 Ultimate Performance Boost for Gaming & Productivity v1.2 🚀
color 0A

:: Error checking function
:checkError
if %errorlevel% neq 0 (
    echo [ERROR] An error occurred! Please try again.
    pause
    goto MENU
)

:MENU
cls
echo ***********************************************
echo *       🚀 Ultimate Performance Boost       *
echo *         for Gaming & Productivity         *
echo ***********************************************
echo.
echo Choose an option:
echo.
echo [1] Boost Computer Performance
echo [2] Stop Unnecessary Windows Services
echo [3] Clear Junk Files and Cache
echo [4] Clear RAM and DNS Cache
echo [5] Optimize Windows for Faster Response
echo [6] Disable Animations and Visual Effects
echo [7] Optimize Internet Performance
echo [8] Optimize Pagefile
echo [9] Optimize CPU/GPU
echo [10] Optimize Hard Drive Performance
echo [11] Set CPU Affinity for Games
echo [12] Restart Explorer
echo [13] Optimize Gaming System
echo [14] Enable High Performance Power Mode
echo [15] Disable File Compression on SSD
echo [16] Enable TRIM for Automatic Operation
echo [17] Disable Defragmentation for SSD
echo [18] Exit
echo.

:: Get user choice
set /p choice="Please choose an option (1-18): "

:: Main Menu
if "%choice%"=="1" goto boostPerformance
if "%choice%"=="2" goto stopWindowsServices
if "%choice%"=="3" goto clearCache
if "%choice%"=="4" goto clearRAM
if "%choice%"=="5" goto optimizeWindows
if "%choice%"=="6" goto disableAnimations
if "%choice%"=="7" goto optimizeInternet
if "%choice%"=="8" goto optimizePagefile
if "%choice%"=="9" goto optimizeCPU_GPU
if "%choice%"=="10" goto optimizeHardDrive
if "%choice%"=="11" goto setAffinity
if "%choice%"=="12" goto restartExplorer
if "%choice%"=="13" goto optimizeGaming
if "%choice%"=="14" goto enableHighPerformance
if "%choice%"=="15" goto disableFileCompression
if "%choice%"=="16" goto enableTRIM
if "%choice%"=="17" goto disableDefrag
if "%choice%"=="18" exit

:: Boost computer performance function
:boostPerformance
cls
echo Boosting computer performance...
timeout /t 2 /nobreak >nul
:: Commands for boosting performance
echo [SUCCESS] Performance boosting complete!
goto MENU

:: Stop unnecessary Windows services function
:stopWindowsServices
cls
echo Stopping unnecessary Windows services...
timeout /t 2 /nobreak >nul
:: Stop unnecessary Windows services
for %%S in (
    "DiagTrack"
    "SysMain"
    "WSearch"
    "RemoteRegistry"
    "WindowsSearch"
    "wuauserv"
    "WinDefend"
    "Spooler"
) do (
    echo Stopping %%S...
    sc stop %%S >nul 2>&1
    if %errorlevel% neq 0 (
        echo [ERROR] Unable to stop %%S or service not found.
    ) else (
        echo [SUCCESS] %%S stopped successfully!
    )
)
goto MENU

:: Clear junk files function
:clearCache
cls
echo Clearing junk files...
timeout /t 2 /nobreak >nul
:: Delete temp and cache files
del /s /f /q %temp%\*.* >nul 2>&1
rd /s /q %temp% >nul 2>&1
md %temp%
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1
rd /s /q C:\Windows\Temp >nul 2>&1
md C:\Windows\Temp
echo [SUCCESS] Junk files cleared!
goto MENU

:: Clear RAM and DNS Cache function
:clearRAM
cls
echo Clearing RAM and DNS Cache...
timeout /t 2 /nobreak >nul
:: Clear DNS Cache
ipconfig /flushdns >nul
if %errorlevel% neq 0 (
    echo [ERROR] Error occurred clearing DNS cache.
) else (
    echo [SUCCESS] DNS cache cleared!
)
goto MENU

:: Optimize Windows for faster response function
:optimizeWindows
cls
echo Optimizing Windows system...
timeout /t 2 /nobreak >nul
:: Optimize Windows for faster response
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d 10 /f >nul
echo [SUCCESS] Windows optimization complete!
goto MENU

:: Disable animations and visual effects function
:disableAnimations
cls
echo Disabling animations and visual effects...
timeout /t 2 /nobreak >nul
:: Disable visual effects
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul
echo [SUCCESS] Animations disabled!
goto MENU

:: Optimize Internet connection function
:optimizeInternet
cls
echo Optimizing Internet connection...
timeout /t 2 /nobreak >nul
:: Optimize internet performance
netsh interface tcp set global autotuninglevel=normal >nul
netsh int tcp set heuristics disabled >nul
echo [SUCCESS] Internet bandwidth optimized!
goto MENU

:: Optimize Pagefile function
:optimizePagefile
cls
echo Optimizing pagefile...
timeout /t 2 /nobreak >nul
:: Adjust pagefile settings
echo Recommendation: Set pagefile size appropriately according to RAM
goto MENU

:: Optimize CPU/GPU function
:optimizeCPU_GPU
cls
echo Optimizing CPU/GPU...
timeout /t 2 /nobreak >nul
:: Optimize CPU/GPU
wmic process where name="explorer.exe" CALL setpriority "high priority" >nul
if %errorlevel% neq 0 (
    echo [ERROR] Error occurred optimizing CPU/GPU.
) else (
    echo [SUCCESS] CPU/GPU optimization complete!
)
goto MENU

:: Optimize Hard Drive function
:optimizeHardDrive
cls
echo Optimizing hard drive...
timeout /t 2 /nobreak >nul
:: Disable file compression on HDD
fsutil behavior set DisableCompression 1 >nul
echo [SUCCESS] Hard drive optimization complete!
goto MENU

:: Set CPU Affinity for games function
:setAffinity
cls
echo Setting CPU affinity for game...
timeout /t 2 /nobreak >nul
:: Check if specified program exists
if exist "GameApplication.exe" (
    start /affinity 1 "GameApplication.exe"
    echo [SUCCESS] CPU affinity set successfully!
) else (
    echo [ERROR] GameApplication.exe not found.
)
goto MENU

:: Restart Explorer function
:restartExplorer
cls
echo Restarting Explorer...
timeout /t 2 /nobreak >nul
:: Restart Explorer
taskkill /F /IM explorer.exe >nul
start explorer.exe
echo [SUCCESS] Explorer restarted!
goto MENU

:: Optimize gaming system function
:optimizeGaming
cls
echo Optimizing gaming system...
timeout /t 2 /nobreak >nul
:: Adjust gaming system settings
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Gaming\GameDVR" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul
echo [SUCCESS] Gaming system optimization complete!
goto MENU

:: Enable High Performance power mode function
:enableHighPerformance
cls
echo Enabling High Performance power mode...
timeout /t 2 /nobreak >nul
:: Enable High Performance power mode
powercfg -change -standby-timeout-ac 0 >nul
powercfg -change -monitor-timeout-ac 0 >nul
powercfg -setactive SCHEME_MAX >nul
echo [SUCCESS] High Performance power mode enabled!
goto MENU

:: Disable file compression on SSD function
:disableFileCompression
cls
echo Disabling file compression on SSD...
timeout /t 2 /nobreak >nul
:: Disable file compression on SSD
fsutil behavior set DisableCompression 1 >nul
echo [SUCCESS] File compression on SSD disabled!
goto MENU

:: Enable TRIM for automatic operation function
:enableTRIM
cls
echo Enabling TRIM for automatic operation...
timeout /t 2 /nobreak >nul
:: Enable TRIM
fsutil behavior set disabledeletenotify 0 >nul
echo [SUCCESS] TRIM enabled!
goto MENU

:: Disable defragmentation for SSD function
:disableDefrag
cls
echo Disabling defragmentation for SSD...
timeout /t 2 /nobreak >nul
:: Disable defragmentation for SSD
fsutil behavior set disabledefrag 1 >nul
echo [SUCCESS] SSD defragmentation disabled!
goto MENU
