@echo off
echo AutoGLM ¿ìÙÙÆô¶¯½Å±¾
echo =====================================
echo.

REM ÉèÖÃAPIÅäÖÃ
set BASE_URL=https://open.bigmodel.cn/api/paas/v4
set MODEL=autoglm-phone
set APIKEY=7b45663b79db4cdfbc4d718de62289b5.nus7DDp5Zf4gNNxF

echo Ê¹ÓÃÅäÖÃ:
echo Base URL: %BASE_URL%
echo Model: %MODEL%
echo API Key: %APIKEY%
echo.

REM ¼ì²éÊÇ·ñÌá¹©ÁÈÈÎÎ²ÎÊý
if "%~1"=="" (
    echo ½»»¥Ä£Ê½ - ÇëÊäÈëÄúµÄÖ¸Áî
    python main.py --base-url "%BASE_URL%" --model "%MODEL%" --apikey "%APIKEY%"
) else (
    echo Ö´ÐÐÈÎÎñ: %*
    python main.py --base-url "%BASE_URL%" --model "%MODEL%" --apikey "%APIKEY%" "%*"
)

echo.
pause