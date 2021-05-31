
#Include %A_ScriptDir%\..\text_lib.ahk

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

