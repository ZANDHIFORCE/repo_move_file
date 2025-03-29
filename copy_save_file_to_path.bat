@echo off
setlocal

SET "BASE_DIR=%CD%"
SET "APPDATA=%APPDATA%\.."

set /p filename=Enter the file name: 

SET "filepath=%BASE_DIR%\%filename%.es3"
SET "DESTINATION=%APPDATA%\LocalLow\semiwork\Repo\saves\%filename%\"

if not exist "%filepath%" (
    echo [ERROR] File not found: %filepath%
    exit /b
)

if not exist "%DESTINATION%" (
    mkdir "%DESTINATION%"
)

copy /Y "%filepath%" "%DESTINATION%"
echo Done!
pause