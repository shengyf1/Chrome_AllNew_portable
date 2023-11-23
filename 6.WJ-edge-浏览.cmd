cls
%1 start "" mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
CD /D "%~dp0"
@echo off


REM 下面这行是从注册表中找到的
REM "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --no-startup-window --win-session-start /prefetch:5

REM 设置edge路径
set EDGE_PATH="C:\Program Files (x86)\Microsoft\Edge\Application"

start "WJ-edge-浏览" "%~dp0\wj\u2132.exe"

@REM 启动MS Edge
0.start_edge.cmd  127.0.0.1:9666


