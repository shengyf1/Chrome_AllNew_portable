@Echo Off
Title ip1云端更新 singbox 最新配置
cd /d %~dp0
..\..\wget -t 2 --no-check-certificate https://www.gitlabip.xyz/Alvin9999/pac2/master/singbox/1/config.json

if exist config.json goto startcopy

..\..\wget -t 2 --no-check-certificate https://gitlab.com/free9999/ipupdate/-/raw/master/singbox/config.json

if exist config.json goto startcopy

echo ip更新失败，请试试ip_2更新
pause
exit
:startcopy

del "..\config.json_backup"
ren "..\config.json"  config.json_backup
copy /y "%~dp0config.json" ..\config.json
del "%~dp0config.json"
ECHO.&ECHO.已更新完成最新singbox配置,请按回车键或空格键启动程序！ &PAUSE >NUL 2>NUL
exit