
REM ���մ������������
set PROXY_URL=%1

REM ���������Ǵ�ע������ҵ���
REM "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --no-startup-window --win-session-start /prefetch:5

REM ����edge·��
set EDGE_PATH="C:\Program Files (x86)\Microsoft\Edge\Application"

REM set START_PAGE=https://www.bannedbook.org/bnews/fq/
set START_PAGE=http://www.google.com

if exist %EDGE_PATH% (
  echo �����Ŀ¼����
) else (
  cls
  echo ���棡
  echo.
  echo �����Ŀ¼%1������!!!!
  echo.
  echo ���� 0.set_chrome.cmd �ļ����������������Ŀ¼�����ԡ�
  echo.
  echo �밴Ctrl+C�رգ�
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
    echo Edge����������ڻ�û����ȷ��װ���볢�����°�װEdge�����
  )
)

