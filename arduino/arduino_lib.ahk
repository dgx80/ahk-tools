#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.

#Include %A_ScriptDir%\..\windows.ahk


Compile(waittime)
{
	send ^+s
	sleep,100

	AltTab(1)
	sleep,100
	send ^r
	sleep,%waittime%
	AltTab(1)
}