@echo off
:MENU
cls
echo =====================
echo    My Batch GUI
echo =====================
echo 1. Open Google
echo 2. Show Credits
echo 3. Exit
echo =====================
set /p choice=Enter your choice (1-3): 

if "%choice%"=="1" (
  call :OpenGoogle
) else if "%choice%"=="2" (
  call :ShowCredits
) else if "%choice%"=="3" (
  echo Exiting...
  exit /b 0
) else (
  echo Invalid choice. Please try again.
  timeout /t 2 >nul
  goto :MENU
)

:OpenGoogle
echo Opening Google...
start https://www.google.com/ref=
goto :MENU

:ShowCredits
echo Credits:
echo - Created by [Your Name]
echo - Version 1.0
echo - Date: %date%
echo - Time: %time%
pause
goto :MENU

:: YOU CAN MODIFY OR EDIT THIS CODE TO YOUR NEEDS. IT'S ONLY AN SIMPLE GUI.
