echo Start: WiFi_passwords_cracker_1_Teon.bat
color 0A
echo off
cls 
for /F "skip=1 usebackq tokens=*" %%A in ("Wifi_passwords_1.txt") do echo %%A
pause