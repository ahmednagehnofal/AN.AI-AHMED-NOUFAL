@echo off
chcp 65001 >nul
title AN.AI AHMED NOFAL - Technical Office Assistant
cd /d "%~dp0"
set PYTHONIOENCODING=utf-8
set "PYEXE=C:\Users\ahmed\AppData\Local\Programs\Python\Python314\python.exe"
if not exist "%PYEXE%" (
  echo [ERROR] Python not found at %PYEXE%
  echo Edit PYEXE path inside this file.
  pause
  exit /b 1
)
curl -s -m 2 http://127.0.0.1:11434 >nul 2>nul || start "" /min ollama serve
"%PYEXE%" -c "import fitz, openpyxl" 2>nul || "%PYEXE%" -m pip install pymupdf openpyxl
"%PYEXE%" -W ignore -u server.py
pause
