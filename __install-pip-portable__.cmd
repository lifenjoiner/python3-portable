@echo off
setlocal ENABLEDELAYEDEXPANSION
pushd %~dp0

::-code-::
for /f "usebackq" %%i in (`"dir /b python3??.zip 2>nul"`) do (
    del /s %%~ni._pth 2>nul
    echo %%i
    echo .
    echo Lib\site-packages
    echo DLLs
    echo.
    echo # Uncomment to run site.main^(^) automatically
    echo #import site
) >python._pth

python -c "from urllib.request import urlretrieve; urlretrieve('https://bootstrap.pypa.io/get-pip.py', '%tmp:\=\\%\\get-pip.py');"
python %tmp%\get-pip.py
python __pip-portable__.py
python -m pip install --force-reinstall pip
python __pip-portable__.py
::-code-::

:Exit
popd
endlocal
exit /b
