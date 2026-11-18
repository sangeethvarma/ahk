#Requires AutoHotkey v2.0
; Scroll over the taskbar to change the volume
#HotIf MouseIsOver("ahk_class Shell_TrayWnd") || MouseIsOver("ahk_class Shell_SecondaryTrayWnd")
WheelUp::Send "{Volume_Up}"
WheelDown::Send "{Volume_Down}"
#HotIf
MouseIsOver(title) {
    MouseGetPos ,, &win
    return WinExist(title " ahk_id " win)
}