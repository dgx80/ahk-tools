#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\lib\lib.ahk
#Include %A_ScriptDir%\..\text_lib.ahk
#Include %A_ScriptDir%\..\windows.ahk
#Include %A_ScriptDir%\..\soundEffect.ahk
;#InstallKeybdHook
;#KeyHistory 100


;^8::
;send ^{F8}
;sleep,500
;send {F9}
;sleep,500
;send ^{Tab}
;sleep,100
;send ^{F8}{F9}
;send !{5}
;sleep,100
;send !{Right}
;sleep,100
;send {Escape}

;return

^+P::
	if (isVsCode() = 1)
	{
		addPublicExport()
		return
	}
	byPassHotKey("^+P")
return

