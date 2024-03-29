#SingleInstance Force
#NoEnv  
; #Warn  ; Enable warnings to assist with detecting common errors. SendMode Input  ; Recommended for new scripts due to its superior speed  and reliability. SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive ahk_class SynergyDesk 
  ;^Tab::Send, "test"
#IfWinActive

#IfWinActive ahk_class HelpPane
  ^SC033::Send, !{F4}
#IfWinActive

#IfWinActive ahk_class Notepad
  ^SC033::Send, !{F4}
#IfWinActive

#IfWinActive ahk_class CabinetWClass
  ^SC033::Send, !{F4}
  ^SC019::Send {Alt Down}{D}{Alt Up}
#IfWinActive

#IfWinActive ahk_class Photo_Lightweight_Viewer
  ^SC033::Send, !{F4}
#IfWinActive

#IfWinActive ahk_class #32770
  ^SC033::Send, !{F4}
  ^SC019::Send {Alt Down}{D}{Alt Up}
#IfWinActive

AppsKey::Send {PgDn}
;Shift & AppsKey::Send {PgUp}
Ctrl & AppsKey::Send {PgUp}
Ctrl & SC02d::Send !{f4}
RAlt::Send {PgUp}
;Insert::Send {Shift down}

;#If t==2
#If 0==1
;CapsLock::Send, ^c
;^CapsLock::Send, ^v
;^SC02e::Send, ^c
^SC02f::Send, ^v
^SC02e::Send, ^c

#IfWinActive ahk_class NotebookFrame
; ^SC034::Send {Ctrl Down}{shift down}{SC034}{shift up}{Ctrl Up}
; ^+SC034::Send {Ctrl Down}{SC034}{Ctrl Up}
  Enter::Send {blind}{shift down}{enter}{shift up} 
  Shift & Enter::Send {enter}
  ;Ctrl & SC034::Send {blind{Ctrl Down}{shift down}{enter}{shift up}{Ctrl Up}
  return
#IfWinActive

#IfWinActive ahk_class Notepad++
MButton::Send {Lbutton}{Ctrl Down}{Alt Down}{b}{Alt Up}{Ctrl Up}
;Doesn't work I have no idea why
;~LButton::
;if (A_PriorHotkey <> "~LButton" or A_TimeSincePriorHotkey > 400)
;{
;    KeyWait, LButton
;    return
;}else{
;    Send {Ctrl Down}{Alt Down}{b}{Alt Up}{Ctrl Up}
;}
#IfWinActive


;#IfWinActive ahk_class SunAwtFrame
;~LButton::
;if (A_PriorHotkey <> "~LButton" or A_TimeSincePriorHotkey > 400)
;{
;    KeyWait, LButton
;    return
;}else{
;    Send {Ctrl Down}{w}{Ctrl Up}
;}
;#IfWinActive

F8::
  WinGetClass, class, A
  MsgBox, The active window's class is "%class%".
  return
  
F7::
WinGet windows, List
Loop %windows%
{
	id := windows%A_Index%
	WinGetTitle wt, ahk_id %id%
	r .= wt . " "
}
MsgBox %r%
return
  
#IfWinActive ahk_class ConsoleWindowClass
  ;AppsKey::Send {Alt Down}{Space}{e}{l}{Alt Up}{PgDn}{Esc}
  ;RAlt::Send {Alt Down}{Space}{e}{l}{Alt Up}{PgUp}{Esc}
  ;LAlt::Send {Alt Down}{Space}{Alt Up}
  RAlt & 
#IfWinActive

F11::	; Next Window
WinGetClass, CurrentActive, A
WinGet, Instances, Count, ahk_class %CurrentActive%
If Instances > 1
	WinSet, Bottom,, A
WinActivate, ahk_class %CurrentActive%
return

F12::	; Previous Window
WinGetClass, CurrentActive, A
WinGet, Instances, Count, ahk_class %CurrentActive%
If Instances > 1
	WinActivateBottom, ahk_class %CurrentActive%
return

F10::    ; Next window
WinGetClass, ActiveClass, A
WinSet, Bottom,, A
WinActivate, ahk_class %ActiveClass%
return