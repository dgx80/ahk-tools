#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

linelength = 120
part1 = 30
part2 := linelength - part1 - 3
subline = 10

send {ENTER 2}
sleep,500
send {UP}
send {NumpadDiv %part1%}SUB{NumpadDiv %part2%}{ENTER}{HOME}

send {NumpadDiv %subline%}{Space %subline%}{ENTER}{HOME}
DrawDivLine(linelength)
send {UP}
send {LEFT}
