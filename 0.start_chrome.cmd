
REM ����CHROME·��
set CHROME_PATH=%~dp0\..\Chrome119

REM ���մ������������
set PROXY_URL=%1

REM set START_PAGE=https://www.bannedbook.org/bnews/fq/
set START_PAGE=http://www.google.com

if exist %CHROME_PATH% (
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


IF EXIST %CHROME_PATH%\chrome.exe (
    REM ����ɫChrome�����ļ����ƽ�ChromeĿ¼
    copy  "config\chrome++.ini" "%CHROME_PATH%\chrome++.ini"
    start %CHROME_PATH%\chrome.exe --user-data-dir=%~dp0chrome-user-data --proxy-server="%PROXY_URL%" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
) ELSE (
  %SystemRoot%\System32\reg.exe query "HKLM\Software\Microsoft\Windows\CurrentVersion\App Paths\chrome.exe" >nul 2>&1
  IF  not errorlevel 1 (
    start chrome.exe --user-data-dir=%~dp0chrome-user-data  --proxy-server="%PROXY_URL%" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1" %START_PAGE%
  ) else ( 
    echo Chrome����������ڻ�û����ȷ��װ���볢�����°�װChrome�����
    echo ���߲������°취��
    echo �Ҽ��������Google Chromeͼ�꣬�ٵ����ԣ��ҵ�chrome.exe�ļ���·����
    echo Ȼ����Ǹ�·�����õ����ļ������ġ�set CHROME_PATH=�����棬Ȼ������������ǽ�ű���
    ping 127.0.0.1 > NUL
    ping 127.0.0.1 > NUL
  )
)
