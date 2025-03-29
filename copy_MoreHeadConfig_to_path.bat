@echo off

SET "BASE_DIR=%CD%"
SET "APPDATA=%APPDATA%\.."
SET "filename=MoreHeadConfig.json"
SET "filepath=%BASE_DIR%\%filename%"
SET "DESTINATION=%APPDATA%\LocalLow\semiwork\Repo\REPOModData\MoreHead\"

if not exist "%DESTINATION%" (
    mkdir "%DESTINATION%"
)

copy "%filepath%" "%DESTINATION%"
echo Done!
pause