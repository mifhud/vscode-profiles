@echo off

echo VSCode PHP

REM Check if a directory parameter is provided
if "%~1"=="" (
    echo No directory provided. Opening home directory.
    set "DIRECTORY=~"
) else if "%~1"=="." (
    echo Opening current directory.
    for /f "delims=" %%i in ('cd') do set "DIRECTORY=%%i"
) else (
    set "DIRECTORY=%~1"
)

REM Launch VSCode with the specified directory
REM Adjust the profile and other parameters as necessary
@REM code --profile "PHP Lite" "%DIRECTORY%"
call code --profile "PHP Lite" --extensions-dir="D:\Program Files\.vscode\extensions" --user-data-dir="D:\Program Files\.vscode\settings" "%DIRECTORY%" & exit
