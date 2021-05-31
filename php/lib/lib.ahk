
#Include %A_ScriptDir%\..\text_lib.ahk
;PHP lib

initLib()
{
	sleep,500
}

DrawDivLine(length)
{
	DrawDivLineNoRet(length)
	send {ENTER}{HOME}
}
DrawDivLineNoRet(length)
{
	send {NumpadDiv %length%}
}
DrawLineWithTag(length,tag)
{
	len := StrLen(tag)
	lbefore := length / 2
	lafter := lbefore - len
	
	DrawDivLineNoRet(lbefore)
	send %tag%
	DrawDivLine(lafter)
}
DrawLineWithInfo(title,value)
{
	DrawDivLineNoRet(3)
	send {SPACE 4}%title%{SPACE}%value%{ENTER}{HOME}
}

runWithNotepad(path)
{
    run "C:\Program Files (x86)\Notepad++\notepad++.exe" %path%
}

tagLineTitle(title,nLength,nPad)
{
	linelength := nLength
	part1 := nPad
	part2 := linelength - part1 - StrLen(title)
	
	DrawDivLineNoRet(part1)
	send %title%
	DrawDivLineNoRet(part2)
	send {ENTER}
}
tagLine(linelength)
{
	 
	DrawDivLineNoRet(linelength)
	send {ENTER}
}

FunctionComment(funcname)
{
	send {HOME}{ENTER}{UP}{HOME}
	DrawLineWithTag(80,"FUNCTION")

	DrawLineWithInfo("name:   ",funcname)
	DrawLineWithInfo("info:   ","")
	DrawLineWithInfo("return: ","--")
	DrawDivLineNoRet(80)
	send {UP 2}{END}
}
tag1(title, section_name)
{
    sleep,100
    tagLineTitle( section_name, 110, 60)
    sleep,100
	tagLine(110)
    tagLine(30)
    DrawDivLineNoRet(30)
    send {SPACE 10}
    send %title%{ENTER}
    tagLine(30)
	tagLine(110)
    tagLine(110)
    
}
region(title)
{
	sleep, 100
    tag1(title,"REGION")
}
region_get_set()
{
	sleep, 100
    region("Getter-Setter")
}
tag2(title)
{
	sleep, 100
	tagLine(80)
	tagLineTitle(title,80,30)
	tagLine(80)
}

tag3(title)
{
	sleep, 100
	tagLineTitle(title,80,30)
}
tag4(title)
{
	sleep, 100
    tagLineTitle(title,40,10)
}
foreach()
{
	sleep, 100
    CutLine()
    list = %clipboard%
    n := StrLen(list)
    StringLeft, elementFull, list, n-1
    StringReplace, element, elementFull, $this-, $
    
    send foreach (%list% as %element%) {{}{ENTER}
    Clipboard = %element%
}
array()
{
	sleep, 100
    send array();
}

writeStructure(class,extends)
{
    send class %class% extends \%extends%{Enter}{{}{Enter}
    send public function __construct(){Enter}{{}{Enter}parent::__construct();{Enter}{}}{Enter}
    send {}}{Enter}

}
construct()
{
	send public function __construct()
	Ret(1)
	send {{}
	Ret(1)
	send parent::__construct();
	Ret(1)
}
removeDollarFromVariable(variable)
{
	dollar := IsFirstLetterAsDollar(variable)
	v := ""
	IfEqual dollar, 1 
	{
		v := SubStr(variable, 2)
		return v
	} 
	return variable
}
addDollarToVariable(variable)
{
	dollar := IsFirstLetterAsDollar(variable)
	v := ""
	IfEqual dollar, 1 
	{
		return variable
	}
	v = $%variable%
	return v
}
convertTypeToVar(type)
{
	empty := ""
	v := LowerCaseFirstLetter(type)
	StringReplace, s, v, Interface, %empty%
	s = $%s%
	return s
}
convertVarToType(variable)
{
	dollar := IsFirstLetterAsDollar(variable)
	v := ""
	IfEqual dollar, 1 
	{
		v := SubStr(variable, 2)
		v := UpperCaseFirstLetter(v)
	} 
	else 
	{
		v := UpperCaseFirstLetter(variable)
	}
	s = %v%
	return s
}

IsFirstLetterAsDollar(buffer)
{
	l := SubStr(buffer, 1, 1)
	dollar := "$"
	IfInString, l, %dollar%
	{
		return true
	}
	return false
}
toggleVariableAndType()
{
	tmpclp := Clipboard
	WordLastCut()
	w := Clipboard
	u := IsFirstLetterUpperCase(w)
	IfEqual u, 1
	{
		w := convertTypeToVar(w)
	} else {		
		w := convertVarToType(w)
	}
	send %w%
	Clipboard = %tmpclp%
}
membreAndInjection(inject)
{
	sleep, 100
    tmpclp := Clipboard
	
    WordLastCut()
	send ^{BACKSPACE}{RETURN}
	name := Clipboard
	type := Clipboard
	variable := Clipboard
	
	Clipboard = %tmpclp%
	u := IsFirstLetterUpperCase(name)
	
	IfEqual u, 1
	{
		variable := convertTypeToVar(name)
	} else {
		type := convertVarToType(type)
		variable := addDollarToVariable(variable)
	}
	name := removeDollarFromVariable(variable)
	security := "private"
	send %security% %variable%;
	send {UP}{END}{Enter}
	
	send /**{ENTER}%type%
	
	if (inject <> 1)
	{
		return
	}
	keyWait, ENTER, D
	sleep,500
	send {Tab}%type% %variable%
	keyWait, ENTER, D
	sleep,100
	send $this-%name% = %variable%;
}
membre(security)
{
	sleep, 100
	
	send {HOME}%security%{Space}
}
psr2_if()
{
	sleep, 100
    send if ({END}{SPACE}{{}{ENTER}{UP}{END}{LEFT 3}
}
insertVarInString()
{
	sleep, 100
	send ' .  . '{LEFT 4}
}
phpUnit()
{
	sleep,100
	v := "bin/phpunit -c app/ --coverage-clover ./clover"
	send %v%
}

xdebug()
{
	sleep,100
	send php -dxdebug.remote_autostart=On{SPACE}
}
WriteIf(condition)
{
    send if (%condition%) {{}{Return}
    send else
    Bracket()
}
GoInElse()
{
	send {UP}{HOME}{LEFT}{BACKSPACE}{RETURN}
}
GoInIf()
{
    send {UP 6}{HOME}{BACKSPACE}{RETURN}
}
GoElseFromTrue()
{
    send {DOWN 4}{END}{BACKSPACE}{RETURN}
}
GoIfEndFromElse()
{
    send {DOWN 2}{HOME}{BACKSPACE}{RETURN}
}

GoIfEndFromTrue()
{
	GoElseFromTrue()
	GoIfEndFromElse()
}
InsertInLastBacket(code)
{
     GoInElse() 
	 send %code%
	 GoIfEndFromElse()
}
InsertInTrueBacket(code)
{
     GoInIf() 
	 send %code%
	 GoIfEndFromElse()
}

WriteAllCondition(condition,codetrue,codefalse)
{
	WriteIf(condition)
	GoInIf() 
	send %codetrue%
	GoIfEndFromTrue()
	InsertInLastBacket(codefalse)
}

isPhpStorm()
{
	WinGetActiveTitle, OutputVar

	IfNotInString, OutputVar, vcxsrv
	{
		IfNotInString, OutputVar, .php
		{
			return false
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