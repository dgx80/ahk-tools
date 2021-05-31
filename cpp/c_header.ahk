#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

WordLastCut()

filename = %clipboard%

send {#}ifndef _%filename%_h{ENTER}
send {#}define _%filename%_h{ENTER 3}


cpp_Include("definitions")
send {RETURN 2}
struct(filename)
struct_init_declaration(filename)
struct_release_declaration(filename)

send {ENTER 2}{#}endif //_%filename%_h{ENTER}
