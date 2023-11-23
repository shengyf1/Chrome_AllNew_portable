cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off

echo 是否执行IP更新？IP更新从云端更新IP配置以解决封锁问题！
echo 按3跳过，按1选择ip1更新，若ip1不好用再按2选ip2更新，如果更新后都用不了，请发邮件到rebeccalane27@gmail.com进行反馈！
choice /C 1234567 /T 17 /D 7 /M "1、ip1更新  2、ip2更新  3、ip3更新  4、ip4更新 5、ip5更新 6、ip6更新 7、跳过"
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

start "clash.meta浏览" "%~dp0clash.meta\clash.meta-windows-386.exe"  -d .\clash.meta\
echo clash.meta，请稍候...


@REM 启动Chrome
call 0.start_chrome.cmd 127.0.0.1:7890
