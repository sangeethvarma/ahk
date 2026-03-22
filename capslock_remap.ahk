#Requires AutoHotkey v2.0

; Caps Lock remapped to Left Control
*CapsLock::
{
    KeyDown("LCtrl")
}

*CapsLock up::
{
    KeyUp("LCtrl")
    if A_PriorKey = "CapsLock"
    {
        Send("{Esc}")
    }
}

; Toggle Caps Lock with both Shift keys
ToggleCaps()
{
    ; Disable CapsLock state tracking
    SetStoreCapsLockMode(false)
    Send("{CapsLock}")
    SetStoreCapsLockMode(true)
}

LShift & RShift::ToggleCaps()
RShift & LShift::ToggleCaps()

; Right Windows key to Right Control
RWin::RCtrl
