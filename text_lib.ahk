CopyInClipboard()
{
    Clipboard =
	send ^c
	ClipWait
	sleep,10
}
CutInClipboard()
{
    Clipboard =
	send ^x
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

; cut the last word
WordLastCut()
{
	WordLastSelect()
	CutInClipboard()
}
CutLine()
{
    send {SHIFT down}{HOME}{SHIFT up}
	CutInClipboard()
}
Backspace()
{
    send {BACKSPACE}
}
Ret(n)
{
	send {RETURN %n%}
}
BracketOpen()
{
    Ret(1)
	send {{}
	Ret(1)
}
BracketClose()
{
    Ret(1)
	send {}}
	Ret(1)
}
Bracket()
{
    BracketOpen()
    BracketClose()
}

LowerCaseFirstLetter(word)
{
	l := SubStr(word, 1, 1)
	StringLower, l, l
	other := SubStr(word, 2)
	newVar = %l%%other%
	return %newVar%
}
UpperCaseFirstLetter(word)
{
	l := SubStr(word, 1, 1)
	StringUpper, l, l
	other := SubStr(word, 2)
	newVar = %l%%other%
	return %newVar%
}
IsFirstLetterUpperCase(buffer)
{
	l := SubStr(buffer, 1, 1)
	
	if l is upper
	{
		return true
	}
	return false
}