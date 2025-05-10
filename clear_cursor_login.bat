@echo off
chcp 65001 >nul
setlocal

:: Separator line
set "line============================================================="

echo.
echo %line%
echo         Checking Cursor login directory
echo %line%
set "TARGET=%AppData%\Cursor\User"
echo Target directory: %TARGET%

if exist "%TARGET%" (
    echo.
    echo %line%
    echo        Directory found. Preparing to delete...
    echo %line%
    rd /s /q "%TARGET%"
    echo.
    echo %line%
    echo               Deletion complete
    echo %line%
    echo Successfully deleted: %TARGET%
    echo Please restart Cursor.
) else (
    echo.
    echo %line%
    echo         Directory not found. It may have already been deleted or never created.
    echo %line%
)

echo.
echo %line%
echo                   Script finished
echo %line%
pause
endlocal
