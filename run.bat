@echo off
setlocal

echo ========================================================
echo   n8n Automatic Launcher (Docker + Ngrok)
echo ========================================================

:: ----------------------------------------------------------
:: 1. Start Docker Desktop and Wait for it
:: ----------------------------------------------------------
echo [1/4] Checking Docker status...

docker info >nul 2>&1
if %errorlevel% neq 0 (
    echo       Docker is not running. Starting Docker Desktop...
    start "" "C:\Program Files\Docker\Docker\Docker Desktop.exe"
    
    echo       Waiting for Docker Daemon to initialize...
    echo       (This usually takes 30-60 seconds, please wait)
    
    :wait_docker
    timeout /t 3 /nobreak >nul
    docker info >nul 2>&1
    if %errorlevel% neq 0 goto wait_docker
    
    echo       Docker is now ready!
) else (
    echo       Docker is already running.
)

:: ----------------------------------------------------------
:: 2. Start Ngrok in a separate window
:: ----------------------------------------------------------
echo [2/4] Starting Ngrok Tunnel...
start "Ngrok Tunnel" "C:\Users\denis\Downloads\ngrok.exe" http --domain=aimee-overstimulative-valda.ngrok-free.dev 5678

:: Give ngrok a moment to connect
timeout /t 3 /nobreak >nul

:: ----------------------------------------------------------
:: 3. Schedule Browser to Open 
:: ----------------------------------------------------------

echo [3/4] Scheduling Browser to open in 15 seconds...
start /b cmd /c "timeout /t 15 /nobreak >nul && start http://localhost:5678"

:: ----------------------------------------------------------
:: 4. Start n8n Docker Container
:: ----------------------------------------------------------
echo [4/4] Starting n8n...
echo.
echo       Press Ctrl+C to stop n8n.
echo.

docker run -it --rm ^
  --name n8n ^
  -p 5678:5678 ^
  -e WEBHOOK_URL=https://aimee-overstimulative-valda.ngrok-free.dev ^
  -v n8n_data:/home/node/.n8n ^
  n8nio/n8n