#Include %A_ScriptDir%\..\php\lib\lib.ahk


appConsole(argument)
{
	send app{NumpadDiv}console %argument%
}

binConsole(argument)
{
	send bin{NumpadDiv}console %argument%
}

createProject()
{
	send composer create-project symfony{NumpadDiv}framework-standard-edition myProject
}

createBundle()
{
	appConsole("generate:bundle")
	
}

