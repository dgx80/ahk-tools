#SingleInstance force
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


run start_ide.ahk
run C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\vcsexpress.exe C:\Workbase\Code\Arduino\workspace\DxMasterArduino\DxMasterArduino.sln
run C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\VCExpress.exe C:\Workbase\Code\Arduino\workspace\Tank\Vs_tank\Vs_tank.sln