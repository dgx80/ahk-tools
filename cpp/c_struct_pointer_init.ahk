#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

WordLastCut()
typename = %clipboard%

cond = ptr == NULL

WriteIf(cond)
GoInIf()

send ptr = (%typename%*)malloc(sizeof(%typename%));
ret(2)

WriteIf(cond)
GoInIf()
send ERR_SendMessage(ERR_TYPE_mallocFailed);
GoElseFromTrue()
send //Memory allocation succeed
send {DOWN 6}{HOME}{BACKSPACE}{RETURN}
send //the memory is already alloc{DOWN 3}{RETURN}

cond2 := "ptr {!}= NULL"
WriteIf(cond2)
InsertInLastBacket("ERR_SendMessage(ERR_TYPE_Assertion);")
send {UP 6}//Initialise la structure
