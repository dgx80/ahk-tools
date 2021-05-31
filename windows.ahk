;#SingleInstance force

AltTab(nTime)
{
	send {Alt down}
	sleep,500
	send {Tab %nTime%}
	sleep,500
	send {Alt Up}
}
ClickOnControl(control, winTitle)
{
	WinWait, %winTitle%
	SetControlDelay -1
	ControlClick, %control%, %winTitle%,,,, NA
}
Beep()
{
	SoundPlay, *-1
}
PlaybackDevice(ntime)
{
	Run, mmsys.cpl
	winname = Sound
	btnname = Set &Default

	if(A_Language = "040C")
	{
		winname = Son
		btnname = Par &défaut
	}

	sleep,100
	WinWait, %winname%
	ControlSend,SysListView321,{Down %nTime%}

	ClickOnControl("Button2", %winname%)
	sleep,1000
	ClickOnControl("Button4", %winname%)
	WinWaitClose
	sleep,100
	Beep()
}
askQuestion(question,inputTxt)
{
    buffer=""
    InputBox,buffer,Text acquisition, %question% ,,400,180,,,,,%inputTxt%

    if ErrorLevel
    {
        return ""
    }
    else
    {
        return buffer
    }
}
storeInfile(tagName,inputTxt)
{
    buffer=""
    InputBox,buffer,Text acquisition, Enter %tagName% ,,400,180,,,,,%inputTxt%

    if ErrorLevel
    {
    }
    else
    {
        p=%A_ScriptDir%\tmp\clip_%tagName%.txt
        FileDelete,%p%
        FileAppend,%buffer%,%p%
    }
}
loadFromFile(tagName)
{
    p=%A_ScriptDir%\tmp\clip_%tagName%.txt

    FileRead,buffer,%p%
    ;MsgBox, You entered %buffer%
    return %buffer%
}

activeWindow(id)
{
	IfWinExist %id%
	{
        IfWinActive %id%
        {
            WinActivateBottom, %id%
        }
        else
        {
            WinActivate, %id%
        }
	}
}

currentLanguage()
{
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  InputLocaleID:=DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
  MsgBox, %InputLocaleID%
}

switchToEnglish()
{
  ;http://msdn.microsoft.com/en-us/library/dd318693%28v=vs.85%29.aspx
	PostMessage 0x50, 0, 0x4090409,, A
}

switchToFrench()
{
	PostMessage 0x50, 0, 0x10090c0c,, A
}
