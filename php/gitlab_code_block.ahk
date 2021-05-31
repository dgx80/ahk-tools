#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force
#Include %A_ScriptDir%\..\markdown\markdown_lib.ahk

switchToEnglish()
{
  ;http://msdn.microsoft.com/en-us/library/dd318693%28v=vs.85%29.aspx
	PostMessage 0x50, 0, 0x4090409,, A
}

switchToFrench()
{
	PostMessage 0x50, 0, 0x10090c0c,, A
}


sleep,500

backtickBracket()

Send php
Send +{ENTER}
send <?
Send +{ENTER 2}
sleep,100
backtickBracket()

Send {UP}
