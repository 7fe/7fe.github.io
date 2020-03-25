#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors. SendMode Input  ; Recommended for new scripts due to its superior speed 
and reliability. SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
t=2
F2::t:=2
F3::t:=!t

;*MButton::Send {blind}{-}

AppsKey::Send {PgDn}
;Shift & AppsKey::Send {PgUp}
Ctrl & AppsKey::Send {PgUp}
Ctrl & SC02d::Send !{f4}
RAlt::Send {PgUp}
PrintScreen::Send {PgDn}
;Insert::Send {Shift down}
f::Send {f}
x::Send {f}

CapsLock::Send ,=

#If t==2
;CapsLock::Send, ^c
;^CapsLock::Send, ^v
;^SC02e::Send, ^c 
^SC02f::Send, ^v
^SC02e::Send, ^c

*SC010::Send {blind}{l}
*SC011::Send {blind}{r}
*SC012::Send {blind}{c}
*SC013::Send {blind}{g}
*SC014::Send {blind}{f}

*SC015::Send {blind}y
*SC016::Send {blind}p
*SC017::Send {blind}.
*SC018::Send {blind},
*SC019::Send {blind}'

;*SC01a::Send {blind}y
;*SC01b::Send {blind}y
;SC01c::Send {blind}p

*SC01e::Send {blind}{s}
*SC01f::Send {blind}{n}
*SC020::Send {blind}{t}
*SC021::Send {blind}{h}
*SC022::Send {blind}{d}

*SC023::Send {blind}{u} 
*SC024::Send {blind}{i}
*SC025::Send {blind}{e}
*SC026::Send {blind}{o}
*SC027::Send {blind}{a}
*SC028::Send {blind}{-}

*SC02c::Send {blind}{v}
*SC02d::Send {blind}{w}
*SC02e::Send {blind}{m}
*SC02f::Send {blind}{b}

*SC030::Send {blind}{x} 
*SC031::Send {blind}{k}
*SC032::Send {blind}{j}
*SC033::Send {blind}{q}
*SC034::Send {blind}{z}  
*SC035::Send {blind}{/}

*SC0c::Send {blind}{;}
*SC0d::Send {blind}{=}

F11::Send {PgDn}

#If
#If t==1
  *SC017::Send {blind}{7}
  *SC018::Send {blind}{8}
  *SC019::Send {blind}{9}
  *SC024::Send {blind}{4}
  *SC025::Send {blind}{5}
  *SC026::Send {blind}{6}
  *SC032::Send {blind}{1}
  *SC033::Send {blind}{2}
  *SC034::Send {blind}{3}  
  *RAlt::Send {blind}0
#If

#IfWinActive ahk_class NotebookFrame
  ; Ctrl + v
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

Return::
  WinGetClass, class, A
  MsgBox, The active window's class is "%class%".
  return
  
#IfWinActive ahk_class ConsoleWindowClass
  AppsKey::Send {Alt Down}{Space}{e}{l}{Alt Up}{PgDn}
  RAlt::Send {Alt Down}{Space}{e}{l}{Alt Up}{PgUp}
#IfWinActive