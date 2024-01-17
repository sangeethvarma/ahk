#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*Capslock::
    Send {Blind}{LControl down}
    return

*Capslock up::
    Send {Blind}{LControl up}
    if A_PRIORKEY = CapsLock
    {
        	Send {Esc}
    }
    return


ToggleCaps(){
    ; this is needed because by default, AHK turns CapsLock off before doing Send
    SetStoreCapsLockMode, Off
    Send {CapsLock}
    SetStoreCapsLockMode, On
    return
}
LShift & RShift::ToggleCaps()
RShift & LShift::ToggleCaps()

RWin::RCtrl
