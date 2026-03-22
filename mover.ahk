#Requires AutoHotkey v2.0

; Enabling Ctrl, Shift to work with Alt movement
Redirect(key) {
    if GetKeyState("Shift", "P") {
        if GetKeyState("Ctrl", "P")
            Send("+^{" key "}")
        else
            Send("+{" key "}")
    } else if GetKeyState("Ctrl", "P") {
        Send("^{" key "}")
    } else if GetKeyState("LWin", "P") or GetKeyState("RWin", "P") {
        Send("#{" key "}")
    } else {
        Send("{" key "}")
    }
}

#HotIf !WinActive("ahk_class Emacs") and !WinActive("ahk_exe sioyek.exe") and !WinActive("ahk_exe Zoom.exe") and !WinActive("ahk_exe WindowsTerminal.exe")

; arrows
Alt & h::Redirect("Left")
Alt & l::Redirect("Right")
Alt & n::Redirect("Down")
Alt & j::Redirect("Down")
Alt & p::Redirect("Up")
Alt & k::Redirect("Up")

; home / end
Alt & a::Redirect("Home")
Alt & e::Redirect("End")

; del
Alt & d::Redirect("Delete")

; Shift+Enter to click
+Enter::Send("{Click}")

#HotIf