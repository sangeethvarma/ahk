#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#If not (WinActive("ahk_class Emacs") or WinActive("ahk_exe sioyek.exe") or WinActive("ahk_exe Zoom.exe")) ; or WinActive("ahk_exe WindowsTerminal.exe")
; redirect nav keys to home row
; alt+arrows to jikl and some more

; !r::Reload

; redirect alt+keys saving other mods
Redirect(key) {
	if GetKeyState("Shift", "D")
		if GetKeyState("Ctrl", "D")
			Send +^{%key%}
		else
			Send +{%key%}
	else if GetKeyState("Ctrl", "D")
		Send ^{%key%}
	else if GetKeyState("Win", "D")
		Send #{%key%}
	else
		Send {%key%}
	return
}

; arrows

Alt & h::Redirect("Left")
Alt & n::Redirect("Down")
Alt & j::Redirect("Down")
Alt & l::Redirect("Right")
Alt & p::Redirect("Up")
Alt & k::Redirect("Up")

; home / end

Alt & a::Redirect("Home")
Alt & e::Redirect("End")

; del

Alt & x::Redirect("Delete")

!e::
  Send {End}
  Return
;!u::
;  MouseMove, 0, -30, 0, R
;  Return
;!d::
;  MouseMove, 0, 30, 0, R
;  Return
;!l::
;  MouseMove, -30, 0, 0, R
;  Return
;!r::
;  MouseMove, 30, 0, 0, R
;  Return
;+Enter::
;  Send {Click}
;  Return