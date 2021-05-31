#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\lib\lib.ahk
#Include %A_ScriptDir%\..\text_lib.ahk


bEscape = 0
bCmd = 1

closeTimer:
    bEscape = 0
return

Escape::
    
    if bEscape > 0
    {
        bCmd = 1
        ;SoundPlay, *-1
    }
    else
    {
        bEscape = 1
        SetTimer,closeTimer,1000
    }
    HotKey, Escape, Off
    send {Escape}
    HotKey, Escape, On
return

!F10::
    stepOver()
return

!F9::
    run()
return

!F8::

    restart()
return

^SC027::
    dollar()
return

Backspace::
    
    HotKey, Backspace, Off
    
    if bCmd > 0
    {
        send {Backspace}
    }
    else
    {
        doBackspace()
    }
    HotKey, Backspace, On
return

^Left::
    HotKey, ^Left, Off
    doCtrlLeft()
    HotKey, ^Left, On
return

^Right::
    HotKey, ^Right, Off
    doCtrlRight()
    HotKey, ^Right, On
return

!F12::

    bCmd = 0
    ;SoundPlay, *-1
    send {F12}

return

^+F7::
	send /usr/bbx3/pro5cpl{SPACE} /u2/pgm/src/
return 

^+R::
Reload
return
#F5::
    exitApp
