@echo off
echo =========================================
echo  Starting Jewelry Store Django Server...
echo =========================================
echo.

if exist .venv\Scripts\activate.bat (
    call .\.venv\Scripts\activate.bat
) else (
    echo [WARNING] Virtual environment .venv not found. Running with system Python...
)

python manage.py runserver 127.0.0.1:8000
pause
