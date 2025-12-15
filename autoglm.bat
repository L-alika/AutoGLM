@echo off
chcp 65001 >nul
echo AutoGLM Quick Launch Script
echo =====================================
echo.

REM Set API configuration
set BASE_URL=https://open.bigmodel.cn/api/paas/v4
set MODEL=autoglm-phone
set APIKEY=7b45663b79db4cdfbc4d718de62289b5.nus7DDp5Zf4gNNxF

echo Configuration:
echo Base URL: %BASE_URL%
echo Model: %MODEL%
echo API Key: %APIKEY%
echo.

REM Check if task parameter is provided
if "%~1"=="" (
    echo Interactive Mode - Please enter your command
    python main.py --base-url "%BASE_URL%" --model "%MODEL%" --apikey "%APIKEY%"
) else (
    echo Executing task: %*
    python main.py --base-url "%BASE_URL%" --model "%MODEL%" --apikey "%APIKEY%" "%*"
)

echo.
pause