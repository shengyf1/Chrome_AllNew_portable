
REM 接收代理服务器参数
set PROXY_URL=%1

REM 下面这行是从注册表中找到的
REM "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --no-startup-window --win-session-start /prefetch:5

REM 设置edge路径
set EDGE_PATH="C:\Program Files (x86)\Microsoft\Edge\Application"

REM set START_PAGE=https://www.bannedbook.org/bnews/fq/
set START_PAGE=http://www.google.com

if exist %EDGE_PATH% (
  echo 浏览器目录存在
) else (
  cls
  echo 警告！
  echo.
  echo 浏览器目录%1不存在!!!!
  echo.
  echo 请在 0.set_chrome.cmd 文件中重新设置浏览器目录后重试。
  echo.
  echo 请按Ctrl+C关闭！
  echo.
  pause
)

echo PROXY_URL=%PROXY_URL%


IF EXIST %EDGE_PATH%\msedge.exe (
    start %EDGE_PATH%\msedge.exe --user-data-dir=%~dp0edge-user-data --proxy-server=127.0.0.1:9666 --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
) ELSE (
  %SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe" >nul 2>&1
  IF  not errorlevel 1 (
    start msedge.exe --user-data-dir=%~dp0edge-user-data --proxy-server=127.0.0.1:9666 --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
  ) else ( 
    echo Edge浏览器不存在或没有正确安装，请尝试重新安装Edge浏览器
  )
)

