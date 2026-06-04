@echo off
title VisualKanban - Servidor local
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (
    echo.
    echo  ERROR: Node.js no esta instalado.
    echo  Abre index.html con doble clic en el Explorador de archivos.
    echo.
    pause
    exit /b 1
)
start "" "http://localhost:8080"
node servidor.js
pause
