@echo off
REM INTERFACE,IP,MASCARA,GATEWAY,DNS

set INTERFACE=Wi-Fi
set MASCARA=255.255.255.0
set GATEWAY=192.168.22.1
set DNS=192.168.1.226

:CONFIRMAR
echo.
echo ===============================================
echo Por Favor, escolha o que deseja fazer !
echo Desenvolvido por Francisco - Estagiario
echo ESTE SCRIPT FOI DESENVOLVIDO PARA O WINDOWS 10
echo ===============================================
echo.
echo [0] IP FIXO
echo [1] IP DINÂMICO - DHCP
echo [2] IPCONFIG
echo [3] PROXY
echo [4] CANCELAR
echo.
echo Por Favor, digite 0,1,2 ou 3:
set/p "alternativa=>"
if %alternativa%==0 goto FIXO
if %alternativa%==1 goto AUTOMATICO
if %alternativa%==2 goto CONFIGURACOES
if %alternativa%==3 goto PROXY
if %alternativa%==4 goto FIM
echo Por Favor Digite uma opção válida.
goto CONFIRMAR

:PROXY
 start ProxyAblement.vbs
 goto :CONFIRMAR

:FIXO
 echo =============================================================
 echo Por Favor digite o IP desejado. Verifique sempre os IP's anteriores para não haver conflito.
 set/p "ip=>"
 set IP = %ip%
 netsh interface ip set address name="%INTERFACE%" static %IP% %MASCARA% %GATEWAY%
 netsh interface ip set dnsservers name="%INTERFACE%" static %DNS1% primary no 
 goto :CONFIRMAR

:AUTOMATICO
 netsh interface ip set address name="%INTERFACE%" dhcp
 netsh interface ip set dnsservers name="%INTERFACE%" dhcp
 goto :CONFIRMAR

:CONFIGURACOES
 ipconfig
 goto :CONFIRMAR

:FIM
 ipconfig
 exit
