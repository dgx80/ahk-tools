#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\lib\lib.ahk
#Include %A_ScriptDir%\..\text_lib.ahk

send CALL "@CMP"{ENTER}
sleep,100
send {ENTER}
sleep,100
send {ENTER}
run \\progidev\u\jeepy\photo\pict
SLEEP,500
SEND {F5}
