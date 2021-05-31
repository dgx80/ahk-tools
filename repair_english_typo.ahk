#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include %A_ScriptDir%\text_lib.ahk

quote = ''

send ^c
;StringReplace, OutputVar, InputVar, SearchText [, ReplaceText, ReplaceAll?]
StringReplace, clipboard, clipboard, /, é, All
StringReplace, clipboard, clipboard, <, %quote%, All
StringReplace, clipboard, clipboard, ]c, ç, All
StringReplace, clipboard, clipboard, É, ?, All
StringReplace, clipboard, clipboard, 'e, è, All
StringReplace, clipboard, clipboard, 'a, à, All

send ^v
