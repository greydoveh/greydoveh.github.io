@echo off
setlocal
pushd "%~dp0" || exit /b 1
echo Open http://127.0.0.1:18765/ in your browser. Close this window to stop.
where py.exe >nul 2>nul
if errorlevel 1 goto python
py -3 -m http.server 18765 --bind 127.0.0.1
goto done
:python
python -m http.server 18765 --bind 127.0.0.1
:done
if errorlevel 1 pause
popd
