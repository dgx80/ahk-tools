﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force


t1 = %A_ScriptDir%\lib\lib.ahk
runWithNotepad(t1)

t1 = %A_ScriptDir%\..\text_lib.ahk
runWithNotepad(t1)

t1 = %A_ScriptDir%\open_script.ahk
runWithNotepad(t1)
