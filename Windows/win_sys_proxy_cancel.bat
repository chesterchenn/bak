@echo off
title 自动设置代理服务器 没有代理
 
echo 正在清空代理服务器设置……
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
:: reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /d "" /f
echo 代理服务器设置已经清空
 
echo 设置完毕
