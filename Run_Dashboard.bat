@echo off
echo Preparing 2026 Engagement Dashboard...

"C:\Program Files\R\R-4.5.2\bin\Rscript.exe" -e "if (!requireNamespace('httpuv', quietly = TRUE)) install.packages('httpuv', repos = 'https://cloud.r-project.org')"

echo.
echo Starting Dashboard Web Server...
"C:\Program Files\R\R-4.5.2\bin\Rscript.exe" -e "httpuv::runStaticServer(dir='.', port=8080, browse=TRUE)"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Could not start the dashboard server.
    pause
)