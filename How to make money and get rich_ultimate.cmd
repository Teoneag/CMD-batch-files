@echo off
title hack
color 0A
C:
cls
:hack
set /a x = %random%
mode con: cols=%x% lines=%x%
goto hack