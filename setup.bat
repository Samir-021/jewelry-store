@echo off
echo =========================================
echo  Project Setup / Repair Script
echo =========================================
echo.

echo 1. Removing old virtual environment (if broken)...
if exist .venv rmdir /s /q .venv

echo 2. Creating a fresh virtual environment...
python -m venv .venv

echo 3. Activating environment...
call .\.venv\Scripts\activate.bat

echo 4. Upgrading pip and installing requirements...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt

echo 5. Applying database migrations (updates database)...
python manage.py migrate

echo.
echo =========================================
echo Setup Complete! You can now use run.bat
echo =========================================
pause
