#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\..\symfony\lib\lib.ahk
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

^+1::
	if (isPhpStorm() = 1)
	{
			CutLine()
			title = %clipboard%
			region(title)
		return
	}
	byPassHotKey("^+1")
return

^+2::
	if (isPhpStorm() = 1)
	{
		CutLine()
		title = %clipboard%
		tag2(title)
		return
	}
	byPassHotKey("^+2")
return

^+3::
	if (isPhpStorm() = 1)
	{
		CutLine()
		title = %clipboard%
		tag3(title)
		return
	}
	byPassHotKey("^+2")
return

^SC027::
    ;SoundPlay, *-1
	if (isPhpStorm() = 1)
	{
		global bRepeatingTrick = 0
		if bRepeatingTrick = 0
		{
			bRepeatingTrick = 1
			runVariableTrick()
			bRepeatingTrick = 0
		}
		return
	}
	byPassHotKey("^SC027")
return

^+SC027::

	if (isPhpStorm() = 1)
	{
		writeVarFromLastLine()
		return
	}
	byPassHotKey("^+SC027")
return

^+,::
	if (isPhpStorm() = 1)
	{
		toggleVariableAndType()
		return
	}
	byPassHotKey("^+,")
return

^+i::
	if (isPhpStorm() = 1)
	{
		send $i
		return
	}
	byPassHotKey("^+i")
return

^SC02B::

	if (isPhpStorm() = 1)
	{
		send {Escape}{Space}={Space}
		soundEffect_pulse()
		return
	}
	byPassHotKey("^SC02B")
return

+^SC02B::
	if (isPhpStorm() = 1)
	{
		send {Escape}{Space}={Space}'';{Left 2}
		soundEffect_pulse()
		return
	}
	byPassHotKey("+^SC02B")
return

^ENTER::
	if (isPhpStorm() = 1)
	{
		send {ESCAPE}{END};
		soundEffect_pulse()
		return
	}
	byPassHotKey("^ENTER")
return

^+B::
	if (isPhpStorm() = 1)
	{
		sleep,500
		foreach()
		return
	}
	byPassHotKey("^+B")
return

^!S::
  ;superuser as www-data and set HOME
	if (isPhpStorm() = 1)
	{
		byPassHotKey("^!S")
		return
	}
	send HOME=~www-data sudo -u www-data
return

^+S::
  ;superuser as www-data
	if (isPhpStorm() = 1)
	{
		byPassHotKey("^+S")
		return
	}
	send sudo -u www-data
return

^+U::
	if (isPhpStorm() <> 1)
	{
		phpUnit()
		return
	}
	byPassHotKey("^+U")
return

^+X::
	if (isPhpStorm() <> 1)
	{
		xdebug()
		return
	}
	byPassHotKey("^+X")
return

;^+P::
;	if (isPhpStorm() = 1)
;	{
;		membreAndInjection(true)
;		return
;	}
;	byPassHotKey("^+P")
;return

;^P::
	;if (isPhpStorm() = 1)
	;{
	;	membreAndInjection(false)
	;	return
	;}
;	byPassHotKey("^P")
;return

^!F6::
	sleep,500
	send {Alt Down}{Tab}
	sleep,500
	send {Alt Up}
	sleep,100
	send {F5}
	sleep,100
	send {Alt Down}{Tab}
	sleep,500
	send {Alt Up}
return
;^[::

;    send {END}{SPACE}{{}
;    send {ENTER}
;    soundEffect_pulse()
;return
;j::
;KeyHistory
;return

#F5::
    ;send ^s
    SoundPlay, *-1
    ;reload
    exitApp


;^P::

;popup(A_CaretX)
;return

runVariableTrick()
{

    ;look for this->
    ; if the last character is space
    tmp := Clipboard

    send +{LEFT}
    CopyInClipboard()
    w = "%clipboard%"
    send {Right}

    add := ""

    IfInString, w, " "
    {
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, (
    {
        ;SoundPlay, *-1
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, [
    {
        ;SoundPlay, *-1
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, {
    {
        ;SoundPlay, *-1
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, !
    {
        ;SoundPlay, *-1
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, ","
    {
        ;SoundPlay, *-1
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, ";"
    {
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, "`r`n"
    {
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, "`n"
    {
        add:= "$this-"
		soundEffect_pulse()
    }
    else IfInString, w, ")"
    {
        add:= "->"
		soundEffect_pulse()
    }
    else IfInString, w, ">"
    {

    }
    else
    {

        ;CopyLastWord()
        WordLastSelect()
        CopyInClipboard()
        myVar = %clipboard%

        send +{LEFT 2}

        CopyInClipboard()
        w = %clipboard%

        l := StrLen(myVar)

        send {Right}

        IfInString, w, ->
        {
            add:= "->"
			soundEffect_pulse()
        }
        else
        {
            IfInString, w, $
            {
                add:= "->"
				soundEffect_pulse()
            }
            else
            {
                send ^{LEFT}{$}
				sleep, 25
				send {ESCAPE }
				sleep, 25
				send {RIGHT %l%}
				send ^{SPACE}
				soundEffect_pulse()
            }
        }
    }

    IfNotInString, add, ""
    {
        send %add%
    }

    Clipboard = %tmp%
}

writeVarFromLastLine()
{
    tmp := Clipboard
    send {Up}{End}{HOME}^+{Right}
    CopyInClipboard()
    w = %clipboard%
    send {End}{Down}{End}
	carretPos = %A_CaretX%
	send {End}
	carretSecondPos = %A_CaretX%
	if carretPos > carretSecondPos
	{
		send {End}
	}
	send %w%
    Clipboard = %tmp%
    soundEffect_pulse()
}
