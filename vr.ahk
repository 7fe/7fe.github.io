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
;Insert::Send {Shift down}

#If t==2
;CapsLock::Send, ^c
;^CapsLock::Send, ^v
;^SC02e::Send, ^c
^SC02f::Send, ^v
^SC02e::Send, ^c

*SC010::Send {blind}{'}
*SC011::Send {blind}{,}
*SC012::Send {blind}{.}
*SC013::Send {blind}{p}
*SC014::Send {blind}{y}

*SC015::Send {blind}f
*SC016::Send {blind}g
*SC017::Send {blind}c
*SC018::Send {blind}r
*SC019::Send {blind}l
;*SC01a::Send {blind}y
;*SC01b::Send {blind}y
;SC01c::Send {blind}p           ; \

*SC01e::Send {blind}{a}
*SC01f::Send {blind}{o}
*SC020::Send {blind}{e}
*SC021::Send {blind}{i}
*SC022::Send {blind}{u}

*SC023::Send {blind}{d} 
*SC024::Send {blind}{h}
*SC025::Send {blind}{t}
*SC026::Send {blind}{n}
*SC027::Send {blind}{s}
*SC028::Send {blind}{-}

*SC02c::Send {blind}{z}
*SC02d::Send {blind}{q}
*SC02e::Send {blind}{j}
*SC02f::Send {blind}{k}

*SC030::Send {blind}{x} 
*SC031::Send {blind}{b}
*SC032::Send {blind}{m}
*SC033::Send {blind}{w}
*SC034::Send {blind}{v}  
*SC035::Send {blind}{/}

*SC0c::Send {blind}{;}
*SC0d::Send {blind}{=}

#If
#If t==1
  *SC017::Send {blind}7
  *SC018::Send {blind}8
  *SC019::Send {blind}9
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