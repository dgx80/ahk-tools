#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\cpp_lib.ahk
#Hotstring r c

; il a 3 mots sur une ligne
; 1= le type
; 2 = Le nom de la fonction
; 3 = le nom de la variable
; int PuissanceHP var_puissance_hp

WordLastCut()
varname = %clipboard%
Backspace()

WordLastCut()
functname = %clipboard%
Backspace()

WordLastCut()
typename = %clipboard%

send ^{TAB}
sleep,500

setdec = void Set%functname%(%typename% val)
getdec = %typename% Get%functname%(void)
send %setdec%;
Ret(1)
send %getdec%;
Ret(2)

;change de page
send ^{TAB}
sleep,500

;Setter
send %setdec%
Ret(1)
Send {{}
Ret(1)
send %varname% = val;
Ret(1)
send {}}
Ret(2)

;Getter
send %getdec%{RETURN}
send {{}{RETURN}
send return %varname%;{RETURN}
send {}}{RETURN}




