#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

CutLine()

max = ^v

send for(i = 0; i < %max%; i{+}{+}){ENTER}
send {{}{ENTER}{}}{UP}{END}{ENTER}

