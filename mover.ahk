#Requires AutoHotkey v2.0

; Enabling Ctrl, Shift to work with Alt movement
Redirect(key) {
    if GetKeyState("Shift")
        if GetKeyState("Ctrl")
            Send("+^{" key "}")
        else
            Send("+{" key "}")
    else if GetKeyState("Ctrl")
        Send("^{" key "}")
    else if GetKeyState("LWin") or GetKeyState("RWin")
        Send("#{" key "}")
    else
        Send("{" key "}")
}

#HotIf !WinActive("ahk_class Emacs") and !WinActive("ahk_exe sioyek.exe") and !WinActive("ahk_exe Zoom.exe") and !WinActive("ahk_exe WindowsTerminal.exe")

; arrows - using ! for Alt modifier
!h::Redirect("Left")
!l::Redirect("Right")
!n::Redirect("Down")
!j::Redirect("Down")
!p::Redirect("Up")
!k::Redirect("Up")

; home / end
!a::Redirect("Home")
!e::Redirect("End")

; del
!d::Redirect("Delete")

; Shift+Enter to click
+Enter::Send("{Click}")

#HotIf
