@echo off
title How to make money and get rich
color 0A
set nr_cols=120
set nr_lines=9001
mode con: cols=%nr_cols% lines=%nr_lines%

:print_random_nr
set r=%random%
set x=%r%
set nr_digits=0

:nr_digits_r
set /a x/=10
set /a nr_digits+=1
if %x% gtr 0 goto :nr_digits_r

setlocal enabledelayedexpansion
set string_r=
for /l %%i in (1, %nr_digits%, %nr_cols%) do (
    set string_r=!string_r!!r!
)
echo !string_r!
@endlocal

goto print_random_nr