
#Include %A_ScriptDir%\..\text_lib.ahk


WriteIf(condition)
{
    send if(%condition%)
    Bracket()
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