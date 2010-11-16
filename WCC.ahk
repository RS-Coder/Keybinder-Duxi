version=1.1
ersteller=DuxAquila
projektname=W.C.C. Keybinder
Passwd=RS-Team
UrlDownloadToFile, http://www.autohotkey.net/~DuxAquila/WCC/NewVersion.txt, NewVersion.txt
FileRead, neuesteversion, NewVersion.txt

if (neuesteversion>version)
{
 newververfügbar := 1
 MsgBox, 4,, Es ist eine neue Version verfügbar, v%neuesteversion%. Wollen Sie diese Downloaden ?
 IfMsgBox, Yes
	{


  MsgBox,,, Downloade Update, 10

  UrlDownloadToFile,http://www.autohotkey.net/~DuxAquila/WCC/WCC.exe, %A_ScriptName%.new
BatchFile=
      (
      Ping 127.0.0.1
      Del "%A_ScriptName%"
      Rename "%A_ScriptName%.new" "%A_ScriptName%"
      cd "%A_ScriptFullPath%"
      Del Update.bat
      "%A_ScriptName%"
      )

      FileDelete,update.bat
      FileAppend,%BatchFile%,update.bat
      MsgBox, Update wird ausgeführt, bitte warten...
      Run,update.bat
	  ExitApp

	}
}
Else
{
MsgBox, 0, Update, Keine Neue Version verfügbar.`nAktuelle Version %Version%	
}

FileDelete,%A_WorkingDir%\NewVersion.txt ;lösche das jetzt unnötige txt file

2open=0
3open=0
4open=0
; Wortliste
; ----------
werbung1 = Potenzverlängerung gesucht? Besuch die W.C.C.{!}
werbung2 = Rost und Dellen im Car? Wir beulen es aus W.C.C.
werbung3 = Du wirst wegen dein Car ausgelacht? Besuch die W.C.C.
werbung4 = Allus, NoS, Frittenteke. Das bekommste bei W.C.C.
werbung5 = Die W.C.C. suchen noch Schrauber, Join us Now
zolltext1 = besticht den Zöllner mit 20 Zoll Tiefbettfelgen
zolltext2 = hat ein Date mit der Tochter des Zöllners
zolltext3 = besticht den Zöllner mit Orangen
zolltext4 = kloppt den Zöllner mit dem Schweller nieder
zolltext5 = Rast mit 200 KMh durch die Zollstation
;====================Downloadbereich====================
FileCreateDir, %A_MyDocuments%\WCC
FileSetAttrib, +H, %A_MyDocuments%\WCC

IfNotExist, %A_MyDocuments%\WCC\WCC_BG.png
UrlDownloadToFile, http://www.autohotkey.net/~DuxAquila/WCC/WCC_BG.png, %A_MyDocuments%\WCC\WCC_BG.png
FileSetAttrib, +H, %A_MyDocuments%\WCC\WCC_BG.png

IfNotExist, %A_MyDocuments%\WCC\WCC_BG2.png
UrlDownloadToFile, http://www.autohotkey.net/~DuxAquila/WCC/WCC_BG2.png, %A_MyDocuments%\WCC\WCC_BG2.png
FileSetAttrib, +H, %A_MyDocuments%\WCC\WCC_BG2.png

IfNotExist, %A_MyDocuments%\WCC\WCC.ini
UrlDownloadToFile, http://www.autohotkey.net/~DuxAquila/WCC/WCC.ini, %A_MyDocuments%\WCC\WCC.ini 
FileSetAttrib, +H, %A_MyDocuments%\WCC\WCC.ini
;====================Hauptfenster====================
box1=
(
1 = Platzhalter für Tor 
2 = Waffen Kaufen
3 = Copcar Knacken mit Countdown
4 = Zeit
5 = Members 
6 = Stats
7 = Navi
8 = Carkey
9 = Carlock
0 = Zoll Loop x10

U = Accept all
Z = Zoll
Alt+E = Essen
Ä = Spambefehl
Alt+o =ID Saven für Recuff
o = Uncuff und Cuff (Achtung man muss Fahrer sein) 

)

box2=
(
/enter = Gebäude Betreten
/exit = Gebäude Verlassen
/quit = Exit mit F und AD Meldung*
/hi = F-Chat Meldung
/ab = Anrufbeantworter#
/p = Gespräch Annehmen#
/h = Schlusssatz#
/rc = Reconnect 
/version
[WICHTIG:]
[Diese Befehle benötigen VLC]
/technobase
/housetime(
/blackbeats

INFO, / befehle müssen mit Leertaste bestätigt werden!!
°
Achtung mit * gekennzeichnete Funktionen
können gegen die Regeln einiger Server sein!
)

box3=
(
F10 = Zufalls Werbung 
F11 = Login/logout Meldung
F12 = Keybinder aus/an

Num1 = Admin on
Alt+Num1 = Admin Off + Admin On
Num2 = /po 
Num3 = Lotto
)
Gui:
Gui 2:+LastFound
GuiID :=WinExist()
Gui, 2:Add, Picture, x-4 y0 w800 h600 , %A_MyDocuments%\WCC\WCC_BG.png
Gui, 2:Font, S10 CDefault Bold, Verdana
Gui, 2:Add, Text, x17 y40 w190 h470 +BackgroundTrans, %box1%
Gui, 2:Add, Text, x297 y40 w200 h470 +BackgroundTrans, %box2%
Gui, 2:Add, Text, x587 y40 w200 h470 +BackgroundTrans, %box3%
IniRead, Pfad, %A_MyDocuments%\WCC\WCC.ini, einstellung, SampPfad
IniRead, Name, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name, Name
IniRead, Pass, %A_MyDocuments%\WCC\WCC.ini, einstellung, Pass, Dein Passwort
IfExist, %Pfad%\m0d_s0beit_sa.ini
{
	IniWrite, 1, %A_MyDocuments%\WCC\WCC.ini, Cheat, sampcheat
}
Else
{
	IniWrite, 0, %A_MyDocuments%\WCC\WCC.ini, Cheat, sampcheat
}
IniRead, cheat,%A_MyDocuments%\WCC\WCC.ini, Cheat,sampcheat
Gui, 2:Add, Button, x16 y530 w190 h20 geinstellung, Einstellung
Gui, 2:Add, Button, x296 y530 w190 h20 gstart, GTA Starten
Gui, 2:Add, Button, x586 y530 w190 h20 gbeenden, Beenden
Gui, 2:Add, Button, x166 y560 w190 h20 gstuff, Stuff
Gui, 2:Add, Button, x456 y560 w190 h20 gvlc, VLC Player Download
Gui, 2:Font, S10 CDefault Bold, Verdana
Gui, 2:+Label2
Gui, 2:Show, x131 y91 h601 w796 , W.C.C. Keybinder By DuxAquila
IfInString Name, Name
{
	MsgBox, 4,, Sie haben ihren Namen nicht angegeben, wollen sie dieses nun machen?
	IfMsgBox, Yes
		{
			MsgBox, 0,Info, Klicken sie dazu auf Einstellung
		}
	IfMsgBox, No
		{
			MsgBox, 4,, Dadurch kann es zu Fehlern kommen `n Wollen sie ihn doch ändern?
			IfMsgBox, Yes
				{
					MsgBox, 0,Info, Klicken sie dazu auf Einstellung
				}
			IfMsgBox, No
				{
					MsgBox, 0,FEHLER, Ihre Entscheidung!
				}
		}
}

Return

2Close:
ExitApp
beenden:
ExitApp
return
start:
IfExist %Pfad%\samp.exe
{
Run, %Pfad%\samp.exe 188.40.51.243:9235
}
Else
{
	MsgBox, 4144, FEHLER!, Samp.exe konnte nicht gefunden werden!!! `n Bitte überprüfen sie ihre Einstellung, 5
	IniDelete, F%A_MyDocuments%\WCC\WCC.ini, einstellung ,SampPfad
}
IfExist, %Pfad%\m0d_s0beit_sa.ini
{
	IniWrite, 1, %A_MyDocuments%\WCC\WCC.ini, Cheat, sampcheat
}
Else
{
	IniWrite, 0, %A_MyDocuments%\WCC\WCC.ini, Cheat, sampcheat
}	
IniRead, cheat,%A_MyDocuments%\WCC\WCC.ini, Cheat,sampcheat
return

;====================Einstellungsfenster====================
einstellung:
If (3open == "0")
{
	Gui, 2:Destroy
Gui, 3:Font, S10 CDefault Bold, Verdana
Gui, 3:-Caption
Gui, 3:Add, Text, x26 y50 w0 h0 , Text
Gui, 3:Add, Picture, x-4 y0 w800 h600 , %A_MyDocuments%\WCC\WCC_BG2.png
Gui, 3:Font, S10 Cred Bold, Verdana
Gui, 3:Add, Text, x6 y10 w340 h20 +BackgroundTrans, Hier kannst du deine Einstellungen vornehmen
IniRead, Name, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name, Dein Name
IniRead, Pass, %A_MyDocuments%\WCC\WCC.ini, einstellung, Pass, Dein Passwort
Gui, 3:Add, Text, x2 y62 w130 h20 +BackgroundTrans, Dein Name
Gui, 3:Add, Edit, x2 y82 w140 h30 vName, %Name%
Gui, 3:Add, Text, x172 y62 w120 h20 +BackgroundTrans, Dein Passwort
Gui, 3:Add, Edit, x162 y82 w140 h30 vPass, %Pass%
Gui, 3:Add, Text, x492 y522 w330 h20 +BackgroundTrans, Bitte hier deine SAMP Ordner suchen
Gui, 3:Add, Button, x632 y552 w90 h30 gsamp_suchen,Suchen
Gui, 3:Add, Button, x16 y550 w90 h30 gSpeichern, Speichern
Gui, 3:Add, Button, x116 y550 w90 h30 gback, Back
Gui, 3:Add, Button, x216 y550 w90 h30 giniclear, Inidatei Reset
Gui, 3:Add, Text, x6 y240 w670 h200 +BackgroundTrans, Der Keybinder ist gemacht von DuxAquila (Duxi) `nund ist für die Fraktion WCC `nEr Unterliegt dem Copyright Gesetz `nWCC Logo ist ein eigetragenes Trademake von WestCoastCustoms`n`nSupport nur im Forum http://Red-Scorpions.de `nBei fragen und Problemen zum Produkt stehe ich ihnen da zur verfügung `n`nVersion %version% `nDas Passwort wird für die Admin Commands gebraucht
Gui, 3:+Label3
Gui, 3:Show, x131 y91 h602 w794, W.C.C. Einstellung
Gui 3:+LastFound
GuiID3 :=WinExist()

3open = 1
}
Else
{
	Gui, 3:Destroy
	3open = 0
}

Return
3Close:
ExitApp

back:
Gui, 3:-LastFound
Gui, 3:Destroy
3open = 0
Gui, 2:+LastFound
GuiID := WinExist()
Goto,Gui
Gui, 2:Show, x131 y91 h601 w796, W.C.C. Keybinder By DuxAquila
IniRead, Name, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name, Name
Return

samp_suchen:
FullFileName=
FileSelectFolder, FullFileName,,1,FileName
    Pfad1 = %FullFileName%
	IniWrite, %Pfad1%, %A_MyDocuments%\WCC\WCC.ini, einstellung, SampPfad
	GuiControl,3:,Pfad1,%Pfad1%
Return

iniclear:
 MsgBox, 4,, Wollen sie wirklich alle einstellung der Ini Datei zurücksetzen?
 IfMsgBox, Yes
{
IniDelete, F%A_MyDocuments%\WCC\WCC.ini, einstellung,	
IniWrite, Name, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name
IniWrite, %A_ProgramFiles%\Rockstar Games\GTA San Andreas, %A_MyDocuments%\WCC\WCC.ini, einstellung, SampPfad
}

Return

Speichern:
Gui, 3:Submit,NoHide
IniWrite, %Name%, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name
IniWrite, %Pass%, %A_MyDocuments%\WCC\WCC.ini, einstellung, Pass
IniRead, Name, %A_MyDocuments%\WCC\WCC.ini, einstellung, Name, Name
IniRead, Pfad, %A_MyDocuments%\WCC\WCC.ini, einstellung, SampPfad
IfNotExist %Pfad%\samp.exe
{
	MsgBox, 4144, FEHLER!, Samp.exe konnte nicht gefunden werden!!! `n Bitte überprüfen sie ihre Suche, 5
	IniDelete, F%A_MyDocuments%\WCC\WCC.ini, einstellung ,SampPfad
}
Else
{
	      MsgBox, Ihre Einstellungen wurden Gespeichert
		  Gui, 3:-LastFound
		  Gui, 3:Destroy
		  3open = 0
		  Gui, 2:+LastFound
		  GuiID := WinExist()
		  Goto,Gui
		  Gui, 2:Show, x131 y91 h601 w796, W.C.C. Keybinder By DuxAquila
}

Return

;====================Stuff====================
stuff:
If (4open == "0")
{
	Gui, 2:Destroy
Gui, 4:Add, Picture, x-4 y0 w800 h600 , %A_MyDocuments%\WCC\WCC_BG2.png
Gui, 4:Font, S10 CRed Bold, Verdana
Gui, 4:Add, Text, x976 y80 w-830 h-30 , Text
Gui, 4:Add, Text, x6 y30 w90 h20 +BackgroundTrans, Lots of Stuff
Gui, 4:Add, Button, x26 y130 w210 h20 gforum, Forum
Gui, 4:Add, Button, x286 y130 w210 h20 gpostfach, Postfach
Gui, 4:Add, Button, x26 y160 w210 h20 gucp, User Control Panel
Gui, 4:Add, Button, x286 y160 w210 h20 gdonator, Donator Info
Gui, 4:Add, Button, x536 y130 w210 h20 gungelesen, Ungelesene Beiträge
Gui, 4:Add, Button, x536 y160 w210 h20 gdatabase, Database
Gui, 4:Add, Button, x26 y190 w210 h20 gwcc, W.C.C. Forum
Gui, 4:Add, Button, x286 y190 w210 h20 gprofil, Profil Bearbeiten
Gui, 4:Add, Button, x116 y550 w90 h30 gback2, Back
Gui, 4:+Label4
Gui, 4:Show, x131 y91 h604 w796, W.C.C. Stuff
Gui 4:+LastFound
GuiID4 :=WinExist()

4open = 1
}
Else
{
	Gui, 4:Destroy
	4open = 0
}

Return

4Close:
ExitApp

back2:
Gui, 4:-LastFound
Gui, 4:Destroy
4open = 0
Gui, 2:+LastFound
GuiID := WinExist()
Goto,Gui
Gui, 2:Show, x131 y91 h601 w796, W.C.C. Keybinder By DuxAquila
Return

forum:
Run www.red-scorpions.de
Return

postfach:
run www.red-scorpions.de/index.php?page=PMList
Return

ucp:
Run http://server.red-scorpions.de/User Control Panel/
Return

donator:
Run www.red-scorpions.de/index.php?page=Custom&pageID=2
Return

ungelesen:
Run www.red-scorpions.de/index.php?form=search&action=unread
Return

database:
Run www.red-scorpions.de/index.php?page=DownloadDB
Return

wcc:
Run www.red-scorpions.de/index.php?page=Board&boardID=133
Return

profil:
Run www.red-scorpions.de/index.php?form=UserProfileEdit
Return

;====================VLC Download====================
vlc:
IfNotExist, VLC-Installer.exe
{
MsgBox, 4,, Der Download beträgt 18,3 MB `n Dieses kann unter Umständen etwas dauern, Wollen sie nun Downloaden?
IfMsgBox, Yes
	{
	Gui, +Disabled			
	Progress, b2 CTWhite CWMaroon fs18 zh0, Downloading VLC-Installer.exe,`nplease wait!, , , Arial
	UrlDownloadToFile, http://vlc.de/download/vlc/vlc-1.1.4-win32.exe, VLC-Installer.exe
	Gui, -Disabled
	Progress, Off
	 MsgBox, 4,, Der Download ist Beendet, Wollen sie nun Installieren? ?
		IfMsgBox, Yes
		{
		Run %A_WorkingDir%\VLC-Installer.exe
		}

		IfMsgBox, No
		{
		MsgBox, 0, Abgeschlossen, Der VLC Download ist abgeschlossen.`nSie können den Installer in ihrem Verzeichniss des Keybinders finden	
		}
	}
	IfMsgBox, No
	{
	MsgBox, 0,,Sie können den Download Jederzeit über den Button .`nNochmalls Starten
	}
}
Else
{
	 MsgBox, 4,, Die Datei ist Vorhanden, Wollen sie nun Installieren? ?
     IfMsgBox, Yes
	{
		Run %A_WorkingDir%\VLC-Installer.exe
	}
}

Return


/*====================AntiCheat====================

Das Anticheat tool befindet sich in der Aufbauphase daher können noch fehler entstehen 
*/

;====================Für GTA benötigt====================

#IfWinActive, GTA:SA:MP
#UseHook
#SingleInstance, Force

t::
Suspend On
SendInput t
Hotkey, Enter, On
Hotkey, Escape, On
Hotkey, t, Off
return

NumpadEnter::
Enter::
Suspend Permit
Suspend Off
SendInput {Enter}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

Escape::
Suspend Permit
Suspend Off
SendInput {Escape}
Hotkey, t, On
Hotkey, Enter, Off
Hotkey, Escape, Off
return

;====================Zahlentasten====================
/*1:: ====================Platzhalter====================
sleep 100
SendInput t/me macht den Russen den Weg frei{Enter}
sleep 100
SendInput t/rm1{Enter}
SendInput t/rm2{Enter}
return
*/
2::
if (cheat == 0)
{
sleep 100
SendInput t/enter{Enter}
SendInput t/buygun deagle 200{Enter}
SendInput t/buygun m4 500{Enter}
SendInput t/buygun mp5 500{enter}
SendInput t/buygun shotgun 200 {Enter}
sleep 100
SendInput t/exit{Enter}
SendInput t/me hat sich grad Waffen gekauft{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	sleep 100
	SendInput t/enter{Enter}
	SendInput t/buygun deagle 200{Enter}
	SendInput t/buygun m4 500{Enter}
	SendInput t/buygun mp5 500{enter}
	SendInput t/buygun shotgun 200 {Enter}
	sleep 100
	SendInput t/exit{Enter}
	SendInput t/me hat sich grad Waffen gekauft{Enter}
}
return

3::
if (cheat == 0)
{
SendInput t/me Knackt das PD Car  {Enter}
SendInput t/knacken{Enter}
SendInput t/me 60 Sek{Enter}
Sleep 10000
SendInput t/me 50 Sek{Enter}
Sleep 10000
SendInput t/me 40 Sek{Enter}
Sleep 10000
SendInput t/me 30 Sek{Enter}
Sleep 10000
SendInput t/me 20 Sek{Enter}
Sleep 10000
SendInput t/me 10{Enter}
Sleep 1000
SendInput t/me 9{Enter}
Sleep 1000
SendInput t/me 8{Enter}
Sleep 1000
SendInput t/me 7{Enter}
Sleep 1000
SendInput t/me 6{Enter}
Sleep 1000
SendInput t/me 5{Enter}
Sleep 1000
SendInput t/me 4{Enter}
Sleep 1000
SendInput t/me 3{Enter}
Sleep 1000
SendInput t/me 2{Enter}
Sleep 1000
SendInput t/me 1{Enter}
Sleep 1000
SendInput t/s GOGOGO{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	SendInput t/me Knackt das PD Car  {Enter}
	SendInput t/knacken{Enter}
	SendInput t/me 60 Sek{Enter}
	Sleep 10000
	SendInput t/me 50 Sek{Enter}
	Sleep 10000
	SendInput t/me 40 Sek{Enter}
	Sleep 10000
	SendInput t/me 30 Sek{Enter}
	Sleep 10000
	SendInput t/me 20 Sek{Enter}
	Sleep 10000
	SendInput t/me 10{Enter}
	Sleep 1000
	SendInput t/me 9{Enter}
	Sleep 1000
	SendInput t/me 8{Enter}
	Sleep 1000
	SendInput t/me 7{Enter}
	Sleep 1000
	SendInput t/me 6{Enter}
	Sleep 1000
	SendInput t/me 5{Enter}
	Sleep 1000
	SendInput t/me 4{Enter}
	Sleep 1000
	SendInput t/me 3{Enter}
	Sleep 1000
	SendInput t/me 2{Enter}
	Sleep 1000
	SendInput t/me 1{Enter}
	Sleep 1000
	SendInput t/s GOGOGO{Enter}
}
return

4::
if (cheat == 0)
{
FormatTime,Zeit, HH:mm
sleep 100
SendInput t/me schaut auf seine Sky Moon Tourbillon %Zeit%{Enter}
SendInput t/time{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	SendInput t/me schaut auf seine Sky Moon Tourbillon %Zeit%{Enter}
	SendInput t/time{Enter}
}
return

5::
if (cheat == 0)
{
sleep 100
SendInput t/me schaut nach ob ein Eldeltuner da ist{Enter}
SendInput t/members{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	SendInput t/me schaut nach ob ein Eldeltuner da ist{Enter}
	SendInput t/members{Enter}
}
return 


6::
if (cheat == 0)
{
sleep 100
SendInput t/me Betrachtet seine Erfahrung{Enter}
SendInput t/stats{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
SendInput t/me Betrachtet seine Erfahrung{Enter}
SendInput t/stats{Enter}
}

return

7::
if (cheat == 0)
{
SendInput t/me Stellt sein Navi ein{Enter}
SendInput t/navi{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
SendInput t/me Stellt sein Navi ein{Enter}
SendInput t/navi{Enter}
}
Return

8::
if (cheat == 0)
{
sleep 100
SendInput t/me wechselt den Autoschlüssel{Enter}
SendInput t/carkey{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
sleep 100
SendInput t/me wechselt den Autoschlüssel{Enter}
SendInput t/carkey{Enter}
}
return

9::
if (cheat == 0)
{
sleep 100
SendInput t/me schließt sein Auto auf/zu{Enter}
SendInput t/carlock{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
SendInput t/me schließt sein Auto auf/zu{Enter}
SendInput t/carlock{Enter}
}
Return

0::
if (cheat == 0)
{
	Loop, 5
	{
		sleep 100
		SendInput t/zoll{Enter}
		sleep 100
		Random,x,1,5
		zollmeldung := zolltext%x%
		SendInput t/me %zollmeldung%{!}{!}{Enter}
	}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	Loop, 5
	{
		sleep 100
		SendInput t/zoll{Enter}
		sleep 100
		Random,x,1,5
		zollmeldung := zolltext%x%
		SendInput t/me %zollmeldung%{!}{!}{Enter}
	}
}

Return

;====================Buchstaben====================

!o::
Suspend On
SendiNput tID:{space}
input,ID,V I M,{enter}
Suspend Off
Iniwrite,%ID%,%A_MyDocuments%\RU\config.ini,REC,Recording1
return

o::
if (cheat == 0)
{
	IniRead, ID,%A_MyDocuments%\RU\config.ini,REC,Recording1
	Suspend On
	SendInput t/untie{Space}%ID%{Enter}
	SendInput t/tie{Space}%ID%{enter}
	Suspend off
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	IniRead, ID,%A_MyDocuments%\RU\config.ini,REC,Recording1
	Suspend On
	SendInput t/untie{Space}%ID%{Enter}
	SendInput t/tie{Space}%ID%{enter}
	Suspend off
}
Return

!e::
if (cheat == 0)
{
	SendInput t/bsnessen{Enter}
	sleep 100
	SendInput {Down}{Down}{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	SendInput t/bsnessen{Enter}
	sleep 100
	SendInput {Down}{Down}{Enter}
}
Return

ä::
if (cheat == 0)
{
	SendInput t{UP}{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
	SendInput t{UP}{Enter}
}
Return

z::
if (cheat == 0)
{
Random,x,1,5
zollmeldung := zolltext%x%
sleep 100
SendInput t/me %zollmeldung%{Enter}
SendInput t/zoll{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
SendInput t/me besticht den Zöllner mit Allus{Enter}
SendInput t/zoll{Enter}
}
return

u::
if (cheat == 0)
{
sleep 100
SendInput t/accept ticket{Enter}
SendInput t/accept repair{Enter}
SendInput t/accept refill{Enter}
SendInput t/accept drugs{Enter}
SendInput t/accept sex{Enter}
SendInput t/accept heal{Enter}
SendInput t/accept hotdog{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
sleep 100
SendInput t/accept ticket{Enter}
SendInput t/accept repair{Enter}
SendInput t/accept refill{Enter}
SendInput t/accept drugs{Enter}
SendInput t/accept sex{Enter}
SendInput t/accept heal{Enter}
SendInput t/accept hotdog{Enter}
}
Return

;====================Funktions-Tasten====================

F10::
if (cheat == 0)
{
Random,x,1,5
adtext := werbung%x%
Sleep 100
SendInput t/ad %adtext%{Enter}
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
Random,x,1,5
suchwort := werbung%x%
Sleep 100
SendInput t/ad %suchwort%{Enter}
}

Return

F11::
if (cheat == 0)
{
Suspend on
SendInput t/togloginlogout{Enter}
Suspend off
}
Else
{
	SendInput t/a %Name% Hat m0d_s0beit Installiert Bitte Ban{Enter}
Suspend on
SendInput t/togloginlogout{Enter}
Suspend off
}
Return

F12::
Suspend
SendInput t/me schaltet seinen Keybinder ein/aus{enter}
return 

;====================Textbefehle====================
:?:/enter::
Suspend Permit
sleep 100
SendInput /enter{Enter}
sleep 1000
SendInput t/me geht in das Gebäude{Enter}
Return

:?:/version::
Suspend Permit
sleep 100
SendInput /f %Name% Nutzt den %projektname%{Enter}
SendInput t/f in der Version %version%{Enter}
SendInput t/f von %ersteller%{Enter}
sleep 1000
SendInput t/me Nutzt den %projektname%{Enter}
SendInput t/me in der Version %version%{Enter}
SendInput t/me von %ersteller%{Enter}
Return

:?:/exit::
Suspend Permit
sleep 100
SendInput /me verlässt das Gebäude{Enter}
sleep 1000
SendInput t/exit{Enter}
Return


:?:/quit::
Suspend Permit
SendInput /f %Name% meldet sich ab{Enter}
SendInput t/ad %Name% geht nun Offline{Enter}
sleep 1000
SendInput t/q{Enter}
Return

:?:/hi::
Suspend Permit
SendInput /f %Name% ist da und will Autos Tunen{Enter}
Return


:?:/ab::
Suspend Permit
SendInput /p{enter}
SendInput tGuten Tag, das ist der Anrufbeantworter von %Name%,{enter}
SendInput tleider bin ich gerade nicht erreichtbar bitte rufen sie später nochmal an.{enter}
SendInput tVielen Dank und ein schönen Tag noch wünscht ihnen %Name%{enter}
SendInput t/h{enter}
Return 


:?:/p::
Suspend Permit
SendInput /p{Enter} ; damit er Ingame abhebt
SendInput tGuten Tag sie sprechen mit %Name%.{Enter} ;Satz 1
SendInput tWie kann ich ihnen behilflich sein?{Enter} ;Satz 2
Return

:?:/h::
Suspend Permit
SendInput Einen schönen Tag wünscht %Name%{Enter}
SendInput t/h{Enter}
Return

:?:/rc::
Suspend permit
SendInput /f Macht kurz ein Relog{enter}
SendInput t/q{Enter}
Sleep 10000
Suspend Off
Hotkey, t, On
		Process , exist, samp.exe
		Process, Close, %errorLevel%
	Run, %Pfad%\samp.exe 188.40.51.243:9235
return

:?:/blackbeats::
Suspend Permit
SendInput {enter}
Suspend Off
Hotkey, t, On
Sendinput t/me schmeißt Blackbeats an {enter}
Sendinput t/w %Name% INFO: Mit der Taste " < " kannst du das Radio AUS machen.{Enter}
RegRead,vlc,HKEY_LOCAL_MACHINE,SOFTWARE\VideoLAN\VLC,
URL1=http://blackbeats.fm/listen.asx
run,%vlc% %URL1%,,hide, VlcPlayer
   Keywait,<,D,T9999
If !errorlevel
{
Process, Close, %VlcPlayer%
}
return

:?:/TechnoBase::
Suspend Permit
SendInput {enter}
Suspend Off
Hotkey, t, On
Sendinput t/me schmeißt Technobase an{enter}
Sendinput t/w %Name% INFO: Mit der Taste " < " kannst du das Radio AUS machen.{Enter}
IfNOTExist,techno.pls
{
Urldownloadtofile,http://listen.technobase.fm/dsl.pls,techno.pls
}
RegRead,vlc,HKEY_LOCAL_MACHINE,SOFTWARE\VideoLAN\VLC,
run,%vlc% techno.pls,,hide, VlcPlayer
   Keywait,<,D,T9999
If !errorlevel
{
Process, Close, %VlcPlayer%
}
return

:?:/housetime::
Suspend Permit
SendInput {enter}
Suspend Off
Hotkey, t, On
Sendinput t/me schmeißt Housetime.FM an {enter}
Sendinput t/w %Name% INFO: Mit der Taste " < " kannst du das Radio AUS machen.{Enter}
RegRead,vlc,HKEY_LOCAL_MACHINE,SOFTWARE\VideoLAN\VLC,
URL99=http://listen.housetime.fm/dsl.asx
run,%vlc% %URL99%,,hide, VlcPlayer
   Keywait,<,D,T9999
If !errorlevel
{
Process, Close, %VlcPlayer%
}
return

;====================NumPad Tasten====================
Numpad1::
If (Passwd == Pass)
{
	SendInput t/aond{Enter}
}
Else
{
	SendInput tSie haben das Passwort nicht richtig gesetzt{Enter}
}

Return

!Numpad1::
If (Passwd == Pass)
{
	SendInput t/aond{Enter}
	SendInput t/aond{Enter}
}
Else
{
	SendInput tSie haben das Passwort nicht richtig gesetzt{Enter}
}

Return

Numpad2::
If (Passwd == Pass)
{
	SendInput t/po{Space}
}
Else
{
	SendInput tSie haben das Passwort nicht richtig gesetzt{Enter}
}

Return


Numpad3::
If (Passwd == Pass)
{
	SendInput t/o ---> LOTTO <---{Enter}
	SendInput t/o Wir spielen nun Lotto{Enter}
	Sleep, 1000
	SendInput t/o ---> LOTTO Help<---{Enter}
	SendInput t/o Um Mitzuspielen müssen sie /lotto <Nummer> Eingeben{Enter}
	Sleep, 1000
	SendInput t/o Wir starten in 10 Sekunden{Enter}
	Sleep, 10000
	SendInput t/startlotto{Enter}
}
Else
{
	SendInput tSie haben das Passwort nicht richtig gesetzt{Enter}
}

Return
;====================Testbereich====================
