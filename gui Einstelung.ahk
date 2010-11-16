Gui, Font, S10 CDefault Bold, Verdana
Gui, Add, Text, x26 y50 w0 h0 , Text
Gui, Add, Picture, x-4 y0 w800 h600 , %A_MyDocuments%\WCC\WCC_BG2.png
Gui, Font, S10 Cred Bold, Verdana
Gui, Add, Text, x6 y10 w340 h20 +BackgroundTrans, Hier kannst du deine Einstellungen vornehmen
Gui, Add, Edit, x2 y82 w140 h30 vName, %Name%
Gui, Add, Text, x492 y522 w330 h20 +BackgroundTrans, Bitte hier deine SAMP Ordner suchen
Gui, Add, Button, x632 y552 w90 h30 gsamp_suchen, Suchen
Gui, Add, Button, x16 y550 w90 h30 gSpeichern, Speichern
Gui, Add, Button, x116 y550 w90 h30 gback, Back
Gui, Add, Button, x216 y550 w90 h30 giniclear, Inidatei Reset
Gui, Add, Text, x2 y302 w670 h200 +BackgroundTrans, Der Keybinder ist gemacht von DuxAquila (Duxi) `nund ist für die Fraktion WCC `nEr Unterliegt dem Copyright Gesetz `nWCC Logo ist ein eigetragenes Trademake von WestCoastCustoms`n`nSupport nur im Forum http://Red-Scorpions.de `nBei fragen und Problemen zum Produkt stehe ich ihnen da zur verfügung `n`nVersion `%version`% `nDas Passwort wird für die Admin Commands gebraucht
Gui, Add, Text, x2 y62 w130 h20 , Dein Name
Gui, Add, Edit, x162 y82 w140 h30 , %Name%
Gui, Add, Text, x172 y62 w120 h20 , Dein Passwort
; Generated using SmartGUI Creator 4.0
Gui, Show, x131 y91 h606 w798, New GUI Window
Return

GuiClose:
ExitApp