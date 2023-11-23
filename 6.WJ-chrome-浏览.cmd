cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off


@REM 设置浏览器目录
set CHROME_PATH=%~dp0\..\Chrome119

set START_PAGE=http://www.google.com

start "WJ浏览" "%~dp0\wj\u2132.exe"

@REM 启动Chrome
0.start_chrome.cmd  127.0.0.1:9666

echo.
echo.
echo.
echo.
echo "===================================================================================="
echo.
echo.
echo "无界需要根据不同的代理通道设置不同的上级代理。如果无界启动后一直在连接服务器，则要检查一下上级代理的地址和端口是否正确。"
echo.
echo.
echo "===================================================================================="
ping 127.0.0.1 > NUL
ping 127.0.0.1 > NUL


