cd %~dp0
@echo off
setlocal enabledelayedexpansion

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "random_string="

for /l %%i in (1,1,15) do (
    set /a "random_num=!random! %% 36"
    for %%j in (!random_num!) do set "random_char=!chars:~%%j,1!"
    set "random_string=!random_string!!random_char!"
    if %%i equ 5 set "random_string=!random_string!-"
    if %%i equ 10 set "random_string=!random_string!-"
)


winxsrcsv64.exe /BS "%random_string%"
winxsrcsv64.exe /PSN "%random_string%"
winxsrcsv64.exe /SU auto
winxsrcsv64.exe /SS "%random_string%"
winxsrcsv64.exe /CS "%random_string%"
