@echo off
setlocal enabledelayedexpansion

REM Directory containing the bundle files
set "archiveDir=.\bundles"

REM Check if the directory exists
if not exist "%archiveDir%" (
    echo Directory %archiveDir% does not exist.
    exit /b 1
)

REM Loop through each .bundle file in the directory
for %%F in ("%archiveDir%\*.bundle") do (
    REM Extract the base name of the repository from the bundle file name
    set "bundleName=%%~nF"
    set "repoName=!bundleName!"

    REM Clone the repository from the bundle file
    echo Cloning %%F into !repoName!
    git clone "%%F" "!repoName!"

    REM Check if the clone was successful
    if exist ".\!repoName!\" (
        REM Initialize and update submodules
        echo Initializing and updating submodules for !repoName!...
        pushd ".\!repoName!"
        git submodule update --init --recursive
        popd
    ) else (
        echo Failed to clone %%F.
    )
)

endlocal