#Include %A_ScriptDir%\..\text_lib.ahk


initLib()
{
	sleep,500
}

isVsCode()
{
	WinGetActiveTitle, OutputVar
	IfNotInString, OutputVar, Visual Studio Code
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

addPublicExport()
{
	initLib()
	sleep, 100
	tmpclp := Clipboard
	CopyLastWord()
	lastWord = %clipboard%
	Clipboard = %tmpclp%
	Send, {UP}{END}{ENTER 2}//{SPACE}%lastWord%{SPACE}:{SPACE}
}