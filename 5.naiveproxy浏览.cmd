cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡
echo ��3��������1ѡ��ip1���£���ip1�������ٰ�2ѡip2���£�������º��ò��ˣ��뷢�ʼ���rebeccalane27@gmail.com���з�����
choice /C 123 /T 15 /D 3 /M "1��ip1����  2��ip2����  3������"
if errorlevel 3 goto startfq
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip2
start /wait "" "%~dp0naiveproxy\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0naiveproxy\ip_Update\ip_1.bat"
goto startfq

:startfq

start "naiveproxy���" "%~dp0naiveproxy\naive.exe" .\naiveproxy\config.json

echo �ȴ�naiveproxy���������Ժ�...

@REM ����Chrome
call 0.start_chrome.cmd socks5://127.0.0.1:1080
