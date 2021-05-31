#Include %A_ScriptDir%\lib\csharp_lib.ahk


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
