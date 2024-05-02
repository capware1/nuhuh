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

winxsrcsv64.exe /SU auto
winxsrcsv64.exe /SS "%random_string%"
winxsrcsv64.exe /SV "1.0"
winxsrcsv64.exe /CSK "%random_string%"
winxsrcsv64.exe /CM  "%random_string%"
winxsrcsv64.exe /SP "%random_string%"
winxsrcsv64.exe /SM "%random_string%"
winxsrcsv64.exe /SK "%random_string%"
winxsrcsv64.exe /SF "%random_string%"
winxsrcsv64.exe /BM "%random_string%"
winxsrcsv64.exe /BP "%random_string%"
winxsrcsv64.exe /BV "1.0"
winxsrcsv64.exe /BT "%random_string%"
winxsrcsv64.exe /BLC "%random_string%"
winxsrcsv64.exe /PSN "%random_string%"
winxsrcsv64.exe /PAT "%random_string%"
winxsrcsv64.exe /PPN "%random_string%"
winxsrcsv64.exe /CSK "%random_string%"
winxsrcsv64.exe /CS "%random_string%"
winxsrcsv64.exe /CV "1.0"
winxsrcsv64.exe /CM "%random_string%"
winxsrcsv64.exe /CA "%random_string%"
winxsrcsv64.exe /CO "0000 0000h"
winxsrcsv64.exe /CT "03h"
winxsrcsv64.exe /IV "3.80"
winxsrcsv64.exe /IVN "%random_string%"
winxsrcsv64.exe /BS "%random_string%"
