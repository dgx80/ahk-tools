#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
#usehook on
SetTitleMatchMode, 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\..\windows.ahk

^!Space::
    activeWindow("Chrome")
    sleep,300
    Send {Space}
    activeWindow("Visual Studio Code")
return 

^!Left::
    activeWindow("Chrome")
    sleep,300
    Send {Left}
    sleep,30
    Send {Left}
    activeWindow("Visual Studio Code")
return 

^!Right::
    activeWindow("Chrome")
    sleep,300
    Send {Right}
    sleep,30
    Send {Right}
    activeWindow("Visual Studio Code")
return 
  
#F4::
    ExitApp
return