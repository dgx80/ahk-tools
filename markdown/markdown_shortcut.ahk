#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\..\windows.ahk
#Include %A_ScriptDir%\markdown_lib.ahk

byPassHotKey(k)
{
	Hotkey, %k%,,Off
	send %k%
	Hotkey, %k%,,On
}

^+1::
	tagWord()
return

^+2::
	Send *{SPACE}w
	send ^{LEFT 2}
	Send *
	send ^{RIGHT}{DELETE}
return

^+3::
	Send **{SPACE}w
	send ^{LEFT 2}
	Send **
	send ^{RIGHT}{DELETE}
return

^+4::
	backtickBracket()
return

#F5::

exitApp
