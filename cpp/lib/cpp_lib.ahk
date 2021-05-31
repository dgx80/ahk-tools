
#Include %A_ScriptDir%\lib\comment_lib.ahk
#Include %A_ScriptDir%\lib\condition_lib.ahk
#Include %A_ScriptDir%\lib\struct_lib.ahk

cpp_Include(filename)
{
    send {#}include "%filename%.h"{ENTER}
}
cpp_stdInclude(filename)
{
    send {#}include <%filename%.h>{ENTER}
}
cpp_function(classname,declaration,argument)
{
	send %classname%::%declaration%(%argument%){ENTER}{{}{Enter}{}}{ENTER}
}
cpp_FunctionComment(funcname)
{
	send {HOME}{ENTER}{UP}{HOME}
	DrawLineWithTag(80,"FUNCTION")

	DrawLineWithInfo("name:   ",funcname)
	DrawLineWithInfo("info:   ","")
	DrawLineWithInfo("return: ","--")
	DrawDivLineNoRet(80)
	send {UP 2}{END}
}
tag1(title)
{
	linelength = 120
	part1 = 30
	part2 := linelength - part1 - 7
	subline = 10


	send {ENTER 2}
	sleep,500
	send {UP}{HOME}
	send {NumpadDiv %part1%}SECTION{NumpadDiv %part2%}{ENTER}{HOME}
	DrawDivLine(linelength)
	DrawDivLine(subline)
	send {NumpadDiv %subline%}{Space %subline%}{ENTER}{HOME}
	DrawDivLine(subline)
	DrawDivLine(linelength)
	send {NumpadDiv %linelength%}{DOWN}{HOME}
	send {UP 3}
	send {LEFT}%title%

	if (title != "")
	{
		send ^{END}
	}
}