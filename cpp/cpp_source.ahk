#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk

classname := WordLastCut()

cpp_Include(classname)
send {Enter 2}

tag1("Constructor/destructor")

cpp_function(classname,classname,"")
cpp_function(classname,"~" + classname,"")

tag1("Public definition")

tag1("Private definition")
send ^s