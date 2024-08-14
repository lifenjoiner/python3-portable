@echo off
setlocal ENABLEDELAYEDEXPANSION

::-code-::
echo You can specify pip argvs to me (--proxy ^<proxy^>) ;p
echo.
set /p action=[i]stall, [u]ninstall: 
if "%action%"=="i" (
    set action=install
) else if "%action%"=="u" (
    set action=uninstall
) else (
    goto :Exit
)

python -m pip install --upgrade pip

for /f "usebackq eol=# delims=" %%i in ("%~dpn0.lst") do (
    pip %action% %%i %*
)
::-code-::

:Exit
endlocal
exit /b
