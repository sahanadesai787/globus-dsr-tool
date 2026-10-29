@echo off
setlocal
cd /d "%~dp0"
echo ============================================
echo     Globus Daily Sales Report Automation
echo ============================================

if not exist ".venv\Scripts\python.exe" (
  echo Creating the local Python environment...
  where py >nul 2>&1
  if %errorlevel%==0 (
    py -3 -m venv .venv
  ) else (
    where python >nul 2>&1
    if %errorlevel%==0 (
      python -m venv .venv
    ) else (
      echo Python was not found. Install Python 3.11 or newer from https://www.python.org/downloads/ and try again.
      pause
      exit /b 1
    )
  )
  if errorlevel 1 (
    echo Could not create Python environment.
    pause
    exit /b 1
  )
)

if not exist ".venv\requirements_installed.txt" (
  echo Installing the required packages. Internet is needed for first-time setup...
  ".venv\Scripts\python.exe" -m pip install --upgrade pip
  if errorlevel 1 goto fail
  ".venv\Scripts\python.exe" -m pip install -r requirements.txt
  if errorlevel 1 goto fail
  echo ready>".venv\requirements_installed.txt"
)

echo Opening the DSR tool in your browser...
".venv\Scripts\python.exe" -m streamlit run app.py --server.headless false
if errorlevel 1 goto fail
exit /b 0

:fail
echo.
echo Setup or launch failed. Check that Python 3.11+ and an internet connection are available for first-time setup.
pause
exit /b 1
