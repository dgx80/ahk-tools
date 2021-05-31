#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Include %A_ScriptDir%\lib\csharp_lib.ahk

sleep,500
send static int Main(string[] args){Enter}
send {{}{Enter}
send int exitcode = 0;{Enter}
send bool b = true;{Enter}
send int argc = 2;{Enter}
send if (args.Length > 0){Enter}
send {{}{Enter}
send  if (args.Length == argc){Enter}
send {{}{Enter}
send  //args[0], args[1];{Enter}
send {}}{Enter}
send else {Enter}
sleep,500
send {{}{Enter}
send if(args.Length > argc){Enter}
send {{}{Enter}
send Console.WriteLine("Too much argument argument");{Enter}
send {}}{Enter}
send else{Enter}
send {{}{Enter}
send Console.WriteLine("Missing argument");{Enter}
send {}}{Enter}
send b = false;{Enter}
send exitcode = -1;{Enter}
send {}}{Enter}
send {}}{Enter}
send else{Enter}
send {{}{Enter}
send //Debug initialising{Enter}
send {}}{Enter}
send if (b){Enter}
send {{}{Enter}
send //TODO execute your program here{Enter}
send {}}{Enter}
send return exitcode;{Enter}
send {}}{Enter}