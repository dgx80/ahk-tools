#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
#usehook on
SetTitleMatchMode, 2
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\windows.ahk


;Terminal
RControl & T::

	activeWindow("ahk_exe WindowsTerminal.exe")
	;switchToEnglish()
return

RControl & P::

	activeWindow("ahk_exe phpstorm64.exe")
	;switchToEnglish()
return

RControl & R::
	activeWindow("ahk_exe rider64.exe")
return

RControl & J::

	activeWindow("DevTool")
	;switchToEnglish()
return

;RControl & M::
;	activeWindow("Microsoft Visual Studio")
;return


RControl & V::
	activeWindow("Visual Studio Code")
	;switchToEnglish()
return

RControl & W::

	activeWindow("Chrome")

return

RControl & C::
	activeWindow("Microsoft Teams")
return

RControl & D::

	activeWindow("Navicat ")

return

;RControl & E::
; ca marche pu pour des folder y a trop de conflit de nom
;	activeWindow("explorer.exe")
;return

;#R::
;	Reload
;return