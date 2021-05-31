#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

classname := WordLastCut()

send {#}ifndef _%classname%_H{ENTER}
send {#}define _%classname%_H{ENTER 2}
send {#}include "definition.h"{ENTER 2}
send class %classname%{Enter}
send {{}{ENTER}
send public:{ENTER}
send %classname%(void);{ENTER}
send virtual ~%classname%(void);{ENTER}
send void * operator new(size_t size){{}return malloc(size);{}}{ENTER}
send void operator delete(void * ptr){{}free(ptr);{}}{ENTER}
send private:{ENTER}
send {}};{ENTER}
send {#}endif //_%classname%_H
send ^s