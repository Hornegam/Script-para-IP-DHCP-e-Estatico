'VBS desenvolvido por Francisco Antonio'
'Github : https://github.com/Hornegam'
'18/05/2019 - 8h43'

dim oShell
set oShell = Wscript.CreateObject("Wscript.Shell")

if msgbox("                Habilitar Proxy?"+vbCrLf+"Sim = Habilitar | Não = Desabilitar", vbQuestion or vbYesNo) = vbYes then
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
oShell.RegWrite "HKCU\Software\Microsoft\Windows\currentVersion\Internet Settings\ProxyServer", "10.3.3.2:3128", "REG_SZ"
msgbox("                                            Proxy Habilitado !"+vbCrLf+"Para qualquer problema, contatar o responsável pela informática !")

else
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD"
oShell.RegWrite "HKCU\Software\Microsoft\Windows\currentVersion\Internet Settings\ProxyServer", ":80", "REG_SZ"
oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 0, "REG_DWORD"
msgbox("                                            Proxy Desabilitado !"+vbCrLf+"Para qualquer problema, contatar o responsável pela informática !")

End if

Set oShell = Nothing