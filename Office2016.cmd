@echo off
title Activate Microsoft Office 2016 ALL versions for FREE! - https://github.com/BsNgChiThanh
cls

echo Activating your Office Professional Plus 2016...


(if exist "%ProgramFiles%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles%\Microsoft Office\Office16")
(if exist "%ProgramFiles(x86)%\Microsoft Office\Office16\ospp.vbs" cd /d "%ProgramFiles(x86)%\Microsoft Office\Office16")


(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_kms*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)
(for /f %%x in ('dir /b ..\root\Licenses16\proplusvl_mak*.xrm-ms') do cscript ospp.vbs /inslic:"..\root\Licenses16\%%x" >nul)



cscript //nologo ospp.vbs /setprt:1688 >nul
cscript //nologo ospp.vbs /unpkey:WFG99 >nul
cscript //nologo ospp.vbs /unpkey:DRTFM >nul
cscript //nologo ospp.vbs /unpkey:BTDRB >nul
cscript //nologo ospp.vbs /unpkey:CPQVG >nul
cscript //nologo ospp.vbs /inpkey:XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 >nul


set i=1
:server
if %i%==1 set KMS=kms7.MSGuides.com
if %i%==2 set KMS=s8.uk.to
if %i%==3 set KMS=s9.uk.to
if %i%==4 goto notsupported
cscript //nologo ospp.vbs /sethst:%KMS% >nul


cscript //nologo ospp.vbs /act | find /i "successful" 

:stop
pause> null