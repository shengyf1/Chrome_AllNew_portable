cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off


@REM ���������Ŀ¼
set CHROME_PATH=%~dp0\..\Chrome119

set START_PAGE=http://www.google.com

start "WJ���" "%~dp0\wj\u2132.exe"

@REM ����Chrome
0.start_chrome.cmd  127.0.0.1:9666

echo.
echo.
echo.
echo.
echo "===================================================================================="
echo.
echo.
echo "�޽���Ҫ���ݲ�ͬ�Ĵ���ͨ�����ò�ͬ���ϼ���������޽�������һֱ�����ӷ���������Ҫ���һ���ϼ�����ĵ�ַ�Ͷ˿��Ƿ���ȷ��"
echo.
echo.
echo "===================================================================================="
ping 127.0.0.1 > NUL
ping 127.0.0.1 > NUL


