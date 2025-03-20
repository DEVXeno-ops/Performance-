@echo off
title 🚀 Ultimate Performance Boost for Gaming & Productivity v1.2 🚀
color 0A

:MENU
cls
echo ***********************************************
echo *       🚀 Ultimate Performance Boost       *
echo *         for Gaming & Productivity         *
echo ***********************************************
echo.
echo เลือกตัวเลือกที่คุณต้องการ:
echo.
echo [1] เพิ่มประสิทธิภาพคอมพิวเตอร์
echo [2] ปิด Windows Services ที่ไม่จำเป็น
echo [3] เคลียร์ไฟล์ขยะ และ Cache
echo [4] เคลียร์ RAM และ DNS Cache
echo [5] ปรับแต่ง Windows ให้ตอบสนองเร็วขึ้น
echo [6] ปิด Animation และ Visual Effects
echo [7] เพิ่มประสิทธิภาพอินเทอร์เน็ต
echo [8] ปรับแต่ง Pagefile
echo [9] ปรับแต่ง CPU/GPU
echo [10] ปรับแต่งการทำงานของ Hard Drive
echo [11] ตั้งค่า Affinity สำหรับเกม
echo [12] รีสตาร์ท Explorer
echo [13] ปรับแต่งระบบการเล่นเกม
echo [14] เปิดใช้โหมดพลังงาน High Performance
echo [15] ปิดการบีบอัดไฟล์บน SSD
echo [16] ตั้งค่า TRIM ให้ทำงานอัตโนมัติ
echo [17] ปิดการ Defragmentation สำหรับ SSD
echo [18] ออกจากโปรแกรม
echo.

:: รับค่าตัวเลือกจากผู้ใช้
set /p choice="กรุณาเลือกตัวเลือก (1-18): "

:: เมนูหลัก
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

:: ฟังก์ชั่นเพิ่มประสิทธิภาพคอมพิวเตอร์
:boostPerformance
cls
echo กำลังกำหนดค่าประสิทธิภาพคอมพิวเตอร์...
timeout /t 2 /nobreak >nul
:: คำสั่งสำหรับเพิ่มประสิทธิภาพคอมพิวเตอร์
goto MENU

:: ฟังก์ชั่นหยุด Windows Services
:stopWindowsServices
cls
echo กำลังกำลังหยุด Windows Services ที่ไม่จำเป็น...
timeout /t 2 /nobreak >nul
:: ปิด Windows Services ที่ไม่จำเป็น
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
    echo กำลังหยุด %%S...
    sc stop %%S >nul 2>&1
    if %errorlevel% neq 0 (
        echo ไม่สามารถหยุด %%S หรือไม่มีบริการนี้.
    ) else (
        echo %%S ถูกหยุดเรียบร้อย!
    )
)
goto MENU

:: ฟังก์ชั่นเคลียร์ไฟล์ขยะ
:clearCache
cls
echo กำลังกำลังกำหนดค่าการล้างไฟล์ขยะ...
timeout /t 2 /nobreak >nul
:: ลบไฟล์ Temp และ Cache
del /s /f /q %temp%\*.* >nul 2>&1
rd /s /q %temp% >nul 2>&1
md %temp%
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1
rd /s /q C:\Windows\Temp >nul 2>&1
md C:\Windows\Temp
echo ล้างไฟล์ขยะเสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นเคลียร์ RAM และ DNS Cache
:clearRAM
cls
echo กำลังกำหนดค่าการเคลียร์ RAM และ DNS Cache...
timeout /t 2 /nobreak >nul
:: เคลียร์ DNS Cache
ipconfig /flushdns >nul
if %errorlevel% neq 0 (
    echo เกิดข้อผิดพลาดในการเคลียร์ DNS Cache.
) else (
    echo เคลียร์ DNS Cache เสร็จเรียบร้อย!
)
goto MENU

:: ฟังก์ชั่นปรับแต่ง Windows ให้ตอบสนองเร็วขึ้น
:optimizeWindows
cls
echo กำลังกำหนดค่าระบบ Windows...
timeout /t 2 /nobreak >nul
:: ปรับแต่งให้ Windows ตอบสนองเร็วขึ้น
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d 10 /f >nul
echo ปรับแต่ง Windows เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นปิด Animation และ Visual Effects
:disableAnimations
cls
echo กำลังกำหนดค่าปิด Animation และ Visual Effects...
timeout /t 2 /nobreak >nul
:: ปิด Visual Effects
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul
echo ปิด Animation เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นเพิ่มประสิทธิภาพอินเทอร์เน็ต
:optimizeInternet
cls
echo กำลังกำหนดค่าการเชื่อมต่ออินเทอร์เน็ต...
timeout /t 2 /nobreak >nul
:: ปรับแต่งอินเทอร์เน็ต
netsh interface tcp set global autotuninglevel=normal >nul
netsh int tcp set heuristics disabled >nul
echo เพิ่ม Bandwidth อินเทอร์เน็ตเสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นปรับแต่ง Pagefile
:optimizePagefile
cls
echo กำลังกำหนดค่า Pagefile...
timeout /t 2 /nobreak >nul
:: ตั้งค่า Pagefile
echo คำแนะนำ: ตั้งค่าขนาด Pagefile ให้เหมาะสมตาม RAM
goto MENU

:: ฟังก์ชั่นปรับแต่ง CPU/GPU
:optimizeCPU_GPU
cls
echo กำลังกำหนดค่า CPU/GPU...
timeout /t 2 /nobreak >nul
:: ปรับแต่ง CPU/GPU
wmic process where name="explorer.exe" CALL setpriority "high priority" >nul
if %errorlevel% neq 0 (
    echo เกิดข้อผิดพลาดในการปรับแต่ง CPU/GPU.
) else (
    echo ปรับแต่ง CPU/GPU เสร็จเรียบร้อย!
)
goto MENU

:: ฟังก์ชั่นปรับแต่ง Hard Drive
:optimizeHardDrive
cls
echo กำลังกำหนดค่า Hard Drive...
timeout /t 2 /nobreak >nul
:: ปิดการบีบอัดไฟล์บน HDD
fsutil behavior set DisableCompression 1 >nul
echo ปรับแต่ง Hard Drive เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นตั้งค่า Affinity สำหรับเกม
:setAffinity
cls
echo กำลังกำหนด Affinity สำหรับเกม...
timeout /t 2 /nobreak >nul
:: ตรวจสอบว่าโปรแกรมที่ระบุมีอยู่หรือไม่
if exist "GameApplication.exe" (
    start /affinity 1 "GameApplication.exe"
    echo การตั้งค่า CPU Affinity เสร็จเรียบร้อย!
) else (
    echo โปรแกรม GameApplication.exe ไม่พบ.
)
goto MENU

:: ฟังก์ชั่นรีสตาร์ท Explorer
:restartExplorer
cls
echo กำลังกำหนดค่าระบบ Explorer...
timeout /t 2 /nobreak >nul
:: รีสตาร์ท Explorer
taskkill /F /IM explorer.exe >nul
start explorer.exe
echo รีสตาร์ท Explorer เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นปรับแต่งระบบการเล่นเกม
:optimizeGaming
cls
echo กำลังกำหนดค่าระบบการเล่นเกม...
timeout /t 2 /nobreak >nul
:: ปรับแต่งสำหรับการเล่นเกม
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Gaming\GameDVR" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul
echo ปรับแต่งระบบการเล่นเกมเสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นเปิดโหมดพลังงาน High Performance
:enableHighPerformance
cls
echo กำลังกำหนดโหมดพลังงาน High Performance...
timeout /t 2 /nobreak >nul
:: เปิดโหมดพลังงาน High Performance
powercfg -change -standby-timeout-ac 0 >nul
powercfg -change -monitor-timeout-ac 0 >nul
powercfg -setactive SCHEME_MAX >nul
echo เปิดโหมดพลังงาน High Performance เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นปิดการบีบอัดไฟล์บน SSD
:disableFileCompression
cls
echo กำลังกำหนดค่าการบีบอัดไฟล์บน SSD...
timeout /t 2 /nobreak >nul
:: ปิดการบีบอัดไฟล์บน SSD
fsutil behavior set DisableCompression 1 >nul
echo ปิดการบีบอัดไฟล์ SSD เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นตั้งค่า TRIM อัตโนมัติ
:enableTRIM
cls
echo กำลังกำหนดค่า TRIM ให้ทำงานอัตโนมัติ...
timeout /t 2 /nobreak >nul
:: ตั้งค่า TRIM
fsutil behavior set disabledeletenotify 0 >nul
echo ตั้งค่า TRIM เสร็จเรียบร้อย!
goto MENU

:: ฟังก์ชั่นปิดการ Defragmentation สำหรับ SSD
:disableDefrag
cls
echo กำลังกำหนดค่าการ Defragmentation สำหรับ SSD...
timeout /t 2 /nobreak >nul
:: ปิดการ Defragmentation สำหรับ SSD
fsutil behavior set disabledefrag 1 >nul
echo ปิดการ Defrag SSD เสร็จเรียบร้อย!
goto MENU
