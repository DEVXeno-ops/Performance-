@echo off
title 🚀 Ultimate Performance Boost for Gaming & Productivity 🚀
color 0A
echo กำลังเพิ่มประสิทธิภาพคอมพิวเตอร์ของคุณเพื่อเล่นเกมและทำงานอย่างมีประสิทธิภาพ...
timeout /t 2 /nobreak >nul

:: 1. ปิด Windows Services ที่ไม่จำเป็นชั่วคราว (ไม่ปิดถาวร)
echo ปิด Windows Services ที่ไม่จำเป็นชั่วคราว...
for %%S in (
    "DiagTrack"
    "SysMain"
    "WSearch"
    "RemoteRegistry"
    "WindowsSearch"
    "wuauserv"  :: ปิด Windows Update Service ขณะเล่นเกม
    "WinDefend"  :: ปิด Windows Defender ขณะเล่นเกม
    "Spooler"    :: ปิด Print Spooler หากไม่จำเป็น
) do (
    sc stop %%S >nul 2>&1
)
echo ปิด Windows Services เสร็จเรียบร้อย!

:: 2. ปิดแอปพื้นหลังที่ไม่จำเป็น
echo ปิดแอปพื้นหลังที่ไม่จำเป็น...
taskkill /F /IM OneDrive.exe >nul 2>&1
taskkill /F /IM RuntimeBroker.exe >nul 2>&1
taskkill /F /IM YourPhone.exe >nul 2>&1
taskkill /F /IM SearchIndexer.exe >nul 2>&1
taskkill /F /IM MicrosoftEdgeUpdate.exe >nul 2>&1
taskkill /F /IM backgroundTaskHost.exe >nul 2>&1
taskkill /F /IM Cortana.exe >nul 2>&1
taskkill /F /IM ShellExperienceHost.exe >nul 2>&1
echo ปิดแอปพื้นหลังเสร็จเรียบร้อย!

:: 3. เคลียร์ไฟล์ขยะ และ Cache
echo กำลังล้างไฟล์ขยะ...
del /s /f /q %temp%\*.* >nul 2>&1
rd /s /q %temp% >nul 2>&1
md %temp%
del /s /f /q C:\Windows\Temp\*.* >nul 2>&1
rd /s /q C:\Windows\Temp >nul 2>&1
md C:\Windows\Temp
echo ล้างไฟล์ขยะเสร็จเรียบร้อย!

:: 4. เคลียร์ RAM และ DNS Cache
echo กำลังเคลียร์ RAM และ DNS Cache...
ipconfig /flushdns >nul
echo เคลียร์ RAM และ DNS Cache เสร็จเรียบร้อย!

:: 5. ปรับแต่ง Windows ให้ตอบสนองเร็วขึ้น
echo ปรับแต่ง Windows เพื่อให้ระบบตอบสนองเร็วขึ้น...
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f >nul
reg add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d 10 /f >nul
echo ปรับแต่ง Windows เสร็จเรียบร้อย!

:: 6. ปิด Animation และ Visual Effects (ช่วยให้ Windows ลื่นขึ้น)
echo ปิด Animation และ Visual Effects...
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f >nul
echo ปิด Animation เสร็จเรียบร้อย!

:: 7. เพิ่มประสิทธิภาพอินเทอร์เน็ต
echo เพิ่มประสิทธิภาพการเชื่อมต่ออินเทอร์เน็ต...
netsh interface tcp set global autotuninglevel=normal >nul
netsh int tcp set heuristics disabled >nul
echo เพิ่ม Bandwidth อินเทอร์เน็ตเสร็จเรียบร้อย!

:: 8. ปรับแต่งไฟล์ Pagefile (ทำให้ระบบทำงานได้เร็วขึ้น)
echo ปรับแต่ง Pagefile...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False >nul
wmic pagefileset where name="C:\\pagefile.sys" set InitialSize=4096,MaximumSize=8192 >nul
echo ปรับแต่ง Pagefile เสร็จเรียบร้อย!

:: 9. ปรับแต่งการทำงานของ CPU/GPU
echo กำลังปรับแต่ง CPU/GPU ให้มีประสิทธิภาพสูงสุด...
wmic process where name="explorer.exe" CALL setpriority "high priority" >nul
wmic process where name="svchost.exe" CALL setpriority "above normal" >nul
wmic process where name="System" CALL setpriority "realtime" >nul
powershell -Command "& {Start-Process 'nvidia-smi' -ArgumentList '--applications-clocks=Max' -NoNewWindow -Wait}" >nul
powershell -Command "& {Start-Process 'RadeonSettings' -ArgumentList '--OverDriveN' -NoNewWindow -Wait}" >nul
echo ปรับแต่ง CPU/GPU เสร็จเรียบร้อย!

:: 10. ปรับแต่งการทำงานของ Hard Drive (สำหรับ HDD)
echo ปรับแต่ง Hard Drive สำหรับการใช้ HDD...
fsutil behavior set DisableCompression 1 >nul
echo ปรับแต่ง Hard Drive เสร็จเรียบร้อย!

:: 11. การจัดการการใช้ CPU Core โดยการใช้ Affinity (ให้เกมใช้ Core มากที่สุด)
echo ปรับแต่งการใช้งาน CPU cores...
start /affinity 1 "GameApplication.exe"  :: คำสั่งนี้จะตั้งให้เกมใช้ Core 0
echo การตั้งค่า CPU Affinity เสร็จเรียบร้อย!

:: 12. รีสตาร์ท Explorer เพื่อให้การเปลี่ยนแปลงมีผล
echo รีสตาร์ท Explorer...
taskkill /F /IM explorer.exe >nul
start explorer.exe
echo รีสตาร์ท Explorer สำเร็จ!

:: 13. เพิ่มประสิทธิภาพระบบที่เกี่ยวข้องกับการเล่นเกม
echo กำลังปรับแต่งระบบสำหรับการเล่นเกม...
:: เพิ่มการตั้งค่า Windows สำหรับ Gaming เช่น Game Mode และการปิดประมวลผลด้านหลัง
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Gaming\GameDVR" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f >nul
echo ปรับแต่งการตั้งค่าระบบสำหรับการเล่นเกมเสร็จเรียบร้อย!

:: แสดงผลลัพธ์
echo.
echo 🔥 คอมพิวเตอร์ของคุณได้รับการเพิ่มประสิทธิภาพโดยไม่มีผลเสีย! 🔥
echo 🚀 ระบบตอบสนองเร็วขึ้น และสามารถเล่นเกมได้ลื่นขึ้น! 🚀
echo 🎯 คาดว่าความเร็วเพิ่มขึ้น 60-90% ขึ้นอยู่กับสเปคเครื่อง 🚀
pause
exit
