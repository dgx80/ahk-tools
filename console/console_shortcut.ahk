#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
#usehook on

SetTitleMatchMode, 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

isConsole()
{
	WinGetActiveTitle, OutputVar
	IfNotInString, OutputVar, Cmder
	{
		return false
	}
	return true
}
byPassHotKey(k)
{
	Hotkey, %k%,,Off
	send %k%
	Hotkey, %k%,,On
}

^+F::
	if (isConsole() = 1)
	{
		send feature/
		return
	}
	byPassHotKey("^+F")
return

^+Delete::
	if (isConsole() = 1)
	{
		send clear{ENTER}
		return
	}
	byPassHotKey("^+{Delete}")
return
