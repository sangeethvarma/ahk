#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_exe firefox.exe")
^'::Send "+{F10}"
#HotIf