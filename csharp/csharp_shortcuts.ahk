#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\lib\csharp_lib.ahk
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


^+SC027::

	if (isVisualStudio() = 1)
	{
		writeVarFromLastLine()
		return
	}
	byPassHotKey("^+SC027")
return


^SC02B::

	if (isVisualStudio() = 1)
	{
		send {Escape}{Space}={Space}
		;soundEffect_pulse()
		return
	}
	byPassHotKey("^SC02B")
return 

^ENTER::
	if (isVisualStudio() = 1)
	{
		send {ESCAPE}{END};
		;soundEffect_pulse()
		return
	}
	byPassHotKey("^ENTER")
return

writeVarFromLastLine()
{
    tmp := Clipboard
    send {Up}{End}{HOME}^+{Right}
    CopyInClipboard()
    w = %clipboard%
    send {End}{Down}
	
	send %w%
    Clipboard = %tmp%
    ;soundEffect_pulse()
}


;^[::

;    send {END}{SPACE}{{}
;    send {ENTER}
;    ;soundEffect_pulse()
;return
;j::
;KeyHistory
;return

^+P::
    properties()
return

^!P::
    allRegion()
return

^+Space::
    if (isVisualStudio() = 1)
    {
        send public void{Space}
        return
    }
    byPassHotKey("^+Space")
return



#F5::
    ;send ^s
    SoundPlay, *-1
    ;reload
    exitApp
