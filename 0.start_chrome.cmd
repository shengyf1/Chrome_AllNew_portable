
REM 设置CHROME路径
set CHROME_PATH=%~dp0\..\Chrome119

REM 接收代理服务器参数
set PROXY_URL=%1

REM set START_PAGE=https://www.bannedbook.org/bnews/fq/
set START_PAGE=http://www.google.com

if exist %CHROME_PATH% (
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


IF EXIST %CHROME_PATH%\chrome.exe (
    REM 把绿色Chrome配置文件复制进Chrome目录
    copy  "config\chrome++.ini" "%CHROME_PATH%\chrome++.ini"
    start %CHROME_PATH%\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server="%PROXY_URL%" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
) ELSE (
  %SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
  IF  not errorlevel 1 (
    start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="%PROXY_URL%" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
  ) else ( 
    echo Chrome浏览器不存在或没有正确安装，请尝试重新安装Chrome浏览器
    echo 或者采用以下办法：
    echo 右键点桌面的Google Chrome图标，再点属性，找到chrome.exe文件的路径，
    echo 然后把那个路径设置到本文件顶部的“set CHROME_PATH=”后面，然后重新启动翻墙脚本。
    ping 127.0.0.1 > NUL
    ping 127.0.0.1 > NUL
  )
)
