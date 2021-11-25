u & i::
  SendInput {b}
  Return
  
i & u::
  SendInput {d}
  Return

u & o::
  SendInput {a}
  Return

o & u::
  SendInput {a}
  Return
  
a & i::
  SendInput {h}
  Return

e & Space::
  SendInput {i}
  Return
  
a & Space::
  SendInput {l}
  Return
  
  
u & Space::
  SendInput {o}
  Return
  
t & Space::
  SendInput {s}
  Return
  

e & i::
  SendInput {t}
  Return
  
e & h::
  SendInput {n}
  Return

s & d::
  SendInput {e}
  Return

u & d::
  SendInput {e}
  Return

if GetKeyState("s") && GetKeyState("d")
	Send {Down}
else
	Send j
Return

; 