cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo �Ƿ�ִ��IP���£�IP���´��ƶ˸���IP�����Խ���������⣡
echo ��3��������1ѡ��ip1���£���ip1�������ٰ�2ѡip2���£�������º��ò��ˣ��뷢�ʼ���rebeccalane27@gmail.com���з�����
choice /C 1234567 /T 17 /D 7 /M "1��ip1����  2��ip2����  3��ip3����  4��ip4���� 5��ip5���� 6��ip6���� 7������"
if errorlevel 7 goto startfq
if errorlevel 6 goto ip6
if errorlevel 5 goto ip5
if errorlevel 4 goto ip4
if errorlevel 3 goto ip3
if errorlevel 2 goto ip2
if errorlevel 1 goto ip1

:ip6
start /wait "" "%~dp0clash.meta\ip_Update\ip_6.bat"
goto startfq

:ip5
start /wait "" "%~dp0clash.meta\ip_Update\ip_5.bat"
goto startfq

:ip4
start /wait "" "%~dp0clash.meta\ip_Update\ip_4.bat"
goto startfq

:ip3
start /wait "" "%~dp0clash.meta\ip_Update\ip_3.bat"
goto startfq

:ip2
start /wait "" "%~dp0clash.meta\ip_Update\ip_2.bat"
goto startfq

:ip1
start /wait "" "%~dp0clash.meta\ip_Update\ip_1.bat"
goto startfq

:startfq

start "clash.meta���" "%~dp0clash.meta\clash.meta-windows-386.exe"  -d .\clash.meta\
echo clash.meta�����Ժ�...


@REM ����Chrome
call 0.start_chrome.cmd 127.0.0.1:7890
