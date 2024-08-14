@Echo off
Setlocal
Prompt $P ~ $+$_$$$G
pushd %~dp0
Call __init__ 2>nul
path %_path_%%path%
set _path_=
if "%~1"=="" (
	start "%USERNAME%'s shell %% %~dp0" %ComSpec% /t:06 /k
) else (
	start "%USERNAME%'s shell %% %~dp0" %ComSpec% /t:06 /c %*
)
