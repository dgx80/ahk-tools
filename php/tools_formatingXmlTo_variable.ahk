#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\lib\lib.ahk
#Include %A_ScriptDir%\..\text_lib.ahk


D::
    send {DOWN}{HOME}^{RIGHT 2}+{END}{BACKSPACE};
return

F::
    send {DOWN}{HOME}^{RIGHT 2}{LEFT}+{END}{BACKSPACE};
return

G::
    send {F3}public {$}
return

ESCAPE::
    ExitApp
return