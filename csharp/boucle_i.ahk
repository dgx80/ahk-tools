﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\csharp_lib.ahk

WordLastCut()

max = ^v

send for(i{ESCAPE} = 0; i{ESCAPE} < %max%; i{ESCAPE}{+}{+}){ENTER}
send {{}{ENTER}{}}{UP}{END}{ENTER}

