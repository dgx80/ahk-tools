#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\csharp_lib.ahk

send {LShift DOWN}^{LEFT}{LShift UP}
send ^x
send {#}region{SPACE}^v{ENTER 2}

send {#}endregion{UP}

