#NoEnv
t=1
*SC028::t:=!t
+SC028::Send {"}
#If t
	`::Send {blind}{;}
	~::Send {blind}{;}
	*SC010::Send {blind}{q}
	*SC011::Send {blind}{w}
	*SC012::Send {blind}{k}
	*SC013::Send {blind}{p}
	*SC014::Send {blind}{j}
	*SC015::Send {blind}{y}
	*SC016::Send {blind}{l}
	*SC017::Send {blind}{h}
	*SC018::Send {blind}{o} 
	*SC019::Send {blind}{r}
	;*SC01a::Send {blind}{[}
	;*SC01b::Send {blind}{]}
	;*SC01c::Send             ; Enter
	*SC01e::Send {blind}{u}
	*SC01f::Send {blind}{m}
	*SC020::Send {blind}{c}
	*SC021::Send {blind}{f}
	*SC022::Send {blind}{g}
	*SC023::Send {blind}{s}
	*SC024::Send {blind}{n}
	*SC025::Send {blind}{e}
	*SC026::Send {blind}{t}
	*SC027::Send {blind}{a}
	;*SC028::Send {blind}{'}
	*SC02c::Send {blind}{z}
	*SC02d::Send {blind}{x}
	*SC02e::Send {blind}{b}
	*SC02f::Send {blind}{v}
	*SC030::Send {blind}{,} 
	*SC031::Send {blind}{c}
	*SC032::Send {blind}{i}
	*SC033::Send {blind}{d}
	*SC034::Send {blind}{.}  
	;*SC035::Send {blind}{/}
	*SC0c::Send {blind}{-}
	*SC0d::Send {blind}{=}
	;SC0e::Send {Backspace}   ;Backspace
	;SC039::Send {Space}
#If
#If !t
	*SC023::
	   t = 1
	   Send {blind}{g}
	   return
	*SC024::
		t = 1
		Send {blind}{c}
		return
	*SC025::
		t = 1
		Send {blind}{u}
		return
	*SC026::
		t = 1
		Send {blind}{m}
		return
	*SC027::
		t = 1
	   Send {blind}{f}
	   return
	*SC015::
		t = 1
		Send {blind}{y}
		return
	*SC016::
		t = 1
		Send {blind}{q}
		return
	*SC017::
		t = 1
		Send {blind}{w}
		return
	*SC018::
		t = 1
		Send {blind}{k}
		return
	*SC019::
		t = 1
		Send {blind}{p}
		return
	*SC031::
		t = 1
		Send {blind}{z}
		return
	*SC032::
		t = 1
		Send {blind}{x}
		return
	*SC033::
		t = 1
		Send {blind}{b}
		return
	*SC034::
		t = 1
		Send {blind}{v}
		return	
	*SC035::
		t = 1
		Send {blind}{j}
		return