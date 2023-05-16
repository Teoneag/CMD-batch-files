@if (@CodeSection == @Batch) @then

@echo off

set SendKeys=CScript //nologo //E:JScript "%~F0"
start "" /B cmd

%SendKeys% "echo off{ENTER}"

set /P "=Wait and send a command: " < NUL
ping -n 5 -w 1 127.0.0.1 > NUL
%SendKeys% "echo Hello, world!{ENTER}"
echo Hello, world!

goto :EOF

@end

// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));