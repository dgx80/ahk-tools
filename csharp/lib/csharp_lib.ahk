#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

#Include %A_ScriptDir%\..\text_lib.ahk

sleep,500

collapse()
{
    send ^mm
}

collapseAll()
{
    send ^mo
}
region(name)
{
    send {#}region{SPACE}%name%{ENTER 4}

    send {#}endregion 
    sleep,100
    send {ENTER 2}

}
findRegion(tag)
{
    region = {#}region %tag%
    find(region)
}
find(tag)
{
    sleep,100
    send ^f
    sleep,100
    send %tag%
    sleep,100
    send {ENTER}
    sleep,200
    send {ESCAPE}
    sleep,100
}
isVisualStudio()
{
	WinGetActiveTitle, OutputVar
	IfNotInString, OutputVar, Visual
	{
        IfNotInString, OutputVar, MonoDevelop
        {
            IfNotInString, OutputVar, Xamarin
            {
                return false
            }
        }
	}
	return true
}
byPassHotKey(k)
{
	Hotkey, %k%,,Off
	send %k%
	Hotkey, %k%,,On
}
properties()
{
    WordLastCut()
    Propertiename = %Clipboard%


    send ^{LEFT}

    CopyLastWord()
    varname = %clipboard%

    send {LEFT 2}

    CopyLastWord()
    typename = %clipboard%

    send {END}
    ret(1)

    send public %typename% %propertiename%{RETURN}
    send {{}{Enter}
    send get {Enter}
    send {{}
    send {Enter}return %varname%{END};{Enter}
    send {}}
    send {Enter}
    send set {Enter}
    send {{}{Enter}%varname%{End} = value;{Enter}{}}{Enter}{}}{Enter} 
    send {SHIFT down}{UP 11}{SHIFT up}^x
    findRegion("PROPERTIES")
    send {DOWN}{ENTER}^v

}
allRegion()
{
    region("ATTRIBUTES")
    region("DECLARATION")
    region("CONSTRUCTOR")
    region("EVENTS")
    region("UPDATE")
    region("ACTIONS")
    region("PROPERTIES")
    region("UTILITY")
    sleep,3000
    collapseAll()
}