@echo off
setlocal enabledelayedexpansion

REM Directory to store the bundle files
set "archiveDir=.\bundles"

REM Check for the input file containing the repository URLs
if "%~1"=="" (
    echo Usage: %0 [File containing GitHub repository URLs]
    exit /b 1
)

REM Set the file containing the repository URLs
set "urlFile=%~1"

REM Check if the file exists
if not exist "!urlFile!" (
    echo File not found: !urlFile!
    exit /b 1
)

REM Create the archive directory if it does not exist
if not exist "!archiveDir!" (
    mkdir "!archiveDir!"
)

REM Clear out the archive directory before starting
echo Cleaning out the archive directory...
del /q "!archiveDir!\*"
for /d %%x in ("!archiveDir!\*") do rmdir /s /q "%%x"

REM Process each line in the file
for /f "tokens=*" %%a in (!urlFile!) do (
    set "repoURL=%%a"

    REM Extract the repository name from the URL
    for %%I in ("!repoURL!") do set "repoName=%%~nI"

    REM Create the bundle file name
    set "bundleFileName=../!archiveDir!\!repoName!.bundle"

    REM Clone the repository --mirror
    echo Cloning the repository !repoName!...
    git clone --mirror "!repoURL!" "!repoName!"

    REM Check if the clone was successful
    if not exist ".\!repoName!\" (
        echo Failed to clone the repository !repoName!.
        goto Cleanup
    )

    REM Create the bundle from the cloned repository
    echo Creating the bundle for !repoName!...
    pushd ".\!repoName!"
    git bundle create "!bundleFileName!" --all
    popd

    REM Cleanup: Delete the mirrored repository directory
    :Cleanup
    echo Cleaning up !repoName!...
    rmdir /s /q ".\!repoName!"

    echo Finished processing !repoName!
    echo.
)

REM Final message
echo All bundles created in !archiveDir!.

endlocal