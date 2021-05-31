#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

WordLastCut()
filename = %clipboard%

cpp_Include(filename)
cpp_Include("Errors")
cpp_stdInclude("stdlib")

ret(2)
struct_init_def(filename)
struct_release_def(filename)
