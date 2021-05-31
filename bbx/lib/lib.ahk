#Warn
;BBX lib


delay()
{
    Sleep, 100
}
enter()
{
    delay()
    Send {Enter}
}
runWithNotepad(path)
{
    run "C:\Program Files (x86)\Notepad++\notepad++.exe" %path%
}

selectCurrentModule()
{
    SetCapsLockState,on
    lastModule := getCurrentModule()
    StringGetPos,pos,lastModule,_
    shortName := ""
    if pos >= 1
    {
        shortName:=SubStr(lastModule,1,pos+1)
    }
    
    InputBox,CurrentModule,Enter current module,Last module: %lastModule%,,400,180,,,,,%shortName%
    ;send {Right}
    if ErrorLevel
    {
    }
    else
    {
        p=%A_ScriptDir%\current_module.txt
        FileDelete,%p%
        FileAppend,%CurrentModule%,%p%
    }
}
searchInFile()
{
    delay()
    if( isBbxWindow() = 0)
    {
 ;       return
    }
    InputBox, my_var,Find in file, Enter your word,,400,180,,,,,
    
    if ErrorLevel Or my_var = ""
    {
        SoundPlay, *-1
        return
    }
    
    sleep,500
    
    if( isBbxWindow() = 0)
    {
  ;      SoundPlay, *-1
   ;     return
    }
    send CALL "_search"{Enter}
    delay()
    Send a
    delay()
    send /u2/pgm/*{Enter}
    delay()
    send x
    delay()
    send Y{Enter}
    delay()
    send T{Enter}
    delay()
    send Y{Enter}
    delay()
    send Y{Enter}
    delay()
    send %my_var%{Enter}
    enter()
    enter()
}
getCurrentModule()
{
    p=%A_ScriptDir%\current_module.txt
    
    FileRead,currentModule,%p%
    ;MsgBox, You entered %currentModule%
    return %currentModule%
}
restart()
{
    send {ESCAPE 2}
    sleep,50
    send end{ENTER}
    send begin{ENTER}
}
run()
{
    send run{ENTER}
}
stepOver()
{
    send .{ENTER}
}
call()
{
    module := getCurrentModule()
    send {Escape 2}
    send CALL "%module%"
    SetCapsLockState,on
}
load()
{
    module := getCurrentModule()

    send {Escape 2}
    send LOAD "%module%"
    SetCapsLockState,on
}
dollar()
{
    if (isBbxWindow() = 1 or isNotepad() = 1)
    {
        send $
    }
    else
    {
        send ^{Space}
    }
    return
}
doBackspace()
{
    if (isBbxWindow() = 1)
    {
        send {Left}{Delete}
    }
    else
    {
        send {Backspace}
    }
    return
}
doCtrlLeft()
{
    if (isBbxWindow() = 1)
    {
        send ^B
    }
    else
    {
        send ^{Left}
    }
    return
}
doCtrlRight()
{
    if (isBbxWindow() = 1)
    {
        send {Tab}
    }
    else
    {
        send ^{Right}
    }
    return
}
doStartBBx()
{
	SetCapsLockState,off
	sleep,200
    module := getCurrentModule()
    run bbx_shortcut.ahk
    run C:\Workbase\portable\putty.exe
    sleep,1000
    send {TAB 4}{DOWN 2}!o
    sleep,2000
	keyWait,Enter,D
    sleep,500
	send ./startbbx.sh{enter}
	sleep,1000
    send fin{ENTER}
    sleep,500
    send load "%module%"{Enter}
    SetCapsLockState,on
    SEND CALL "_edit"{ENTER}
    send ^T
    send #{UP}
}
isBbxWindow()
{
    WinGetActiveTitle, OutputVar
	IfNotInString, OutputVar, Progi-Dev
	{
		return false
	}
	return true
}
isNotepad()
{
    WinGetActiveTitle, OutputVar
	IfNotInString, OutputVar, Notepad++
	{
		return false
	}
	return true
}
doRem(line, message="",addLine =10)
{
	msg := "REM " + message
    return writeLine(line,msg,addLine)
}
writeLine(line,code="",addLine =10)
{
	sleep,50
    Send %line% %code%{ENTER}
	line := line+addLine
    return line
}
createProcedure()
{   
    InputBox,Line,Tag number,Enter Code Block Thousand,,400,180,,,,,
    
    if ErrorLevel
    {
        RETURN
    }
    SetCapsLockState, on
    InputBox,Name,Name,Write name,,400,180,,,,,
    
    if ErrorLevel
    {
        RETURN
    }
	sleep,500
    SetCapsLockState, off
    InputBox, Detail,Detail,Write some detail,,400,180,,,,,
    
    if ErrorLevel
    {
        RETURN
    }
    nLine := Line . "000"
    nLastLine := nLine -1
    tagName = %Name%:
    Send %nLastLine% REM %nLastLine% {- 70}{Enter}
	sleep,100
	tagLine := "T" . Line . "_"
	procBegin :=  tagLine . "PROC_BEGIN"
	procEnd :=  tagLine . "PROC_END"
	l1 := nLine
	l2 := l1 + 8
	
	buf := l1 . " Procedure: " . Detail
    l1 := doRem(l1, buf)
	l2 := doRem(l2)
	
	buf := tagLine . Name . ":"
	l1 := writeLine(l1, buf)
	l2 := doRem(l2)
	
	buf := "GOTO " . procBegin
	l1 := writeLine(l1, buf)
	l2 := doRem(l2)
	
	buf := "This tag [" . tagName . "] can be call by extern program"
	l1 := doRem(l1,buf,2)
	l1 := writeLine(l1, tagName,2)
	l1 := doRem(l1, "External flag",6)
	l2 := doRem(l2)
	
	l1 := writeLine(l1, "LET FL_EXTERNAL=1")
	l2 := doRem(l2)
	
    buf := procBegin . ":"
	l1 := writeLine(l1, buf)
	l2 := doRem(l2)
	
	buf := "{{}"
	l1 := doRem(l1, buf)
	l2 := doRem(l2)
	
    l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := doRem(l1)
	l2 := doRem(l2)
    
	l1 := nLine + 450
	buf := "{}}"
	l1 := doRem(l1,buf,1)
	
	buf := "IF (FL_EXTERNAL<>1) THEN GOTO " . procEnd
	l1 := writeLine(l1,buf,1)
	l1 := doRem(l1,,8)
	l1 := doRem(l1)
	l1 := writeLine(l1,"EXIT")
	
	buf := procEnd . ":"
	l1 := writeLine(l1,buf)
	l1 := writeLine(l1, "RETURN",9)
    l1 := doRem(l1, "---------------------------------------------------------------------END PROC")
}
exportToAscii()
{
	localBbxDirectory = C:\Workbase\bbx
    user = jeepy
    module := getCurrentModule()
    p = /u/%user%/src/bbx/%module%.bbx
    pDest = %localBbxDirectory%\%module%.bbx
    p2 = //progidev%p%
    send {ESCAPE 2}
	FileDelete, %pDest%
    ;FileDelete, %p2%
    sleep,100
    send CALL "_ascii","vi"{ENTER}
    sleep,100
    send {Escape}
    sleep,100
    send :w %p%
	return
    sleep,100
    send {Escape}
    sleep,100
    send :q{Enter}
    sleep,100
    send no
    sleep,100
    ;FileCopy,%p2%, %localBbxDirectory%
    ;runWithNotepad(p2)
}
openInAscii()
{
    localBbxDirectory = C:\Workbase\bbx
    user = jeepy
    module := getCurrentModule()
    p = /u/%user%/src/bbx/%module%.bbx
    pDest = %localBbxDirectory%\%module%.bbx
    p2 = //progidev%p%
    send {ESCAPE 2}
	FileDelete, %pDest%
    FileDelete, %p2%
    sleep,100
    send CALL "_ascii","vi"{ENTER}
    sleep,100
    send {Escape}
    sleep,100
    send :w %p%
	RETURN
    sleep,100
    send {Escape}
    sleep,100
    send :q{Enter}
    sleep,100
    send no
    sleep,100
    FileCopy,%p2%, %localBbxDirectory%
    runWithNotepad(pDest)
}
openScript()
{
t1 = %A_ScriptDir%\..\text_lib.ahk
    runWithNotepad(t1)
    delay()
    t1 = %A_ScriptDir%\bbx_shortcut.ahk
    runWithNotepad(t1)
    delay()
    t1 = %A_ScriptDir%\lib\lib.ahk
    runWithNotepad(t1)
    delay()
}
