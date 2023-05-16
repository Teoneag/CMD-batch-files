echo off
color 0a
cls
chcp 65001
set a=șustă
for /l %%x in (1, 1, 1000) do set a=%a%șustă
pause
:hack
echo done for
echo %a%
goto hack