@echo off

REM Check if a directory parameter is provided
if "%~1"=="" (
    echo No directory provided. Opening home directory in WSL.
    set "DIRECTORY=~"
) else if "%~1"=="." (
    echo Opening current directory in WSL.
    for /f "delims=" %%i in ('cd') do set "DIRECTORY=%%i"
) else (
    set "DIRECTORY=%~1"
)

REM Launch VSCode with the specified directory
REM Adjust the profile and other parameters as necessary
code --profile "Java Lite" "%DIRECTORY%"
