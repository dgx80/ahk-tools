
runWithNotepad(path)
{
    run "C:\Program Files (x86)\Notepad++\notepad++.exe" %path%
}


initLib()
{
	sleep,500
}

dumpFile(user, password, host, database, fullname)
{
	send mysqldump -u %user% -p%password% -h %host% %database% > %fullname%
}
executeFile(user, password, host, database, fullname)
{
	send mysql -u %user% -p%password% -h %host% %database% < %fullname%
}