@echo off
cd /d "%~dp0"
if not exist "vaultwarden.exe" (
  echo vaultwarden.exe not found
  exit /b 1
)
if not exist "web-vault\index.html" (
  echo web-vault\index.html missing
  exit /b 1
)
echo Starting Vaultwarden from %CD%
echo Open: http://127.0.0.1:8000
vaultwarden.exe %*
