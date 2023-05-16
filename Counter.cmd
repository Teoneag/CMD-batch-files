@echo off
set a=1
:f1
echo %a%
set /a a=a+1
if %a% lss 9501 goto f1
pause