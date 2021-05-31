#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;version 2014-11-12

bRepeatingTrick = 0
;from text_lib
CopyInClipboard()
{
    Clipboard =
	send ^c
	ClipWait
	sleep,10
}

WordLastSelect()
{
	send {SHIFT down}^{LEFT}{SHIFT up}
}
CopyLastWord()
{
	WordLastSelect()
	CopyInClipboard()
}
; from php lib
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
        add:= "$this->"
    }
    else IfInString, w, (
    {
        ;SoundPlay, *-1
        add:= "$this->"
    }
    else IfInString, w, [
    {
        ;SoundPlay, *-1
        add:= "$this->"
    }
    else IfInString, w, {
    {
        ;SoundPlay, *-1
        add:= "$this->"
    }
    else IfInString, w, !
    {
        ;SoundPlay, *-1
        add:= "$this->"
    }
    else IfInString, w, ","
    {
        ;SoundPlay, *-1
        add:= "$this->"
    }
    else IfInString, w, ";"
    {
        add:= "$this->"
    }
    else IfInString, w, "`r`n"
    {
        add:= "$this->"
    }
    else IfInString, w, "`n"
    {
        add:= "$this->"
    }
    else IfInString, w, ")"
    {
        add:= "->"
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
        }
        else
        {
        
            IfInString, w, $
            {
                add:= "->"
            }
            else
            {
                send ^{LEFT}{$}{RIGHT %l%}
				send ^{SPACE}
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
}

;from php shortcuts

^SC027::    
    ;SoundPlay, *-1
    if bRepeatingTrick = 0
    {
        bRepeatingTrick = 1
        runVariableTrick()
        bRepeatingTrick = 0
    }
return

^+SC027::

    writeVarFromLastLine()

return

^ENTER::

    send {ESCAPE}{END};
    soundEffect_pulse()
return

;j::
;KeyHistory
;return

#F5::
    ;send ^s
    SoundPlay, *-1
    ;reload
    exitApp

