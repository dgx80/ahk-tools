#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\csharp_lib.ahk

CopyLastWord()
send {UP}{END}{ENTER}
funcname = ^v

DrawLineWithTag(80,"FUNCTION")

;DrawLineWithInfo("name:   ",funcname)
;DrawLineWithInfo("info:   ","")
;DrawLineWithInfo("return: ","--")
;DrawDivLineNoRet(80)
;send {UP 2}{END}

