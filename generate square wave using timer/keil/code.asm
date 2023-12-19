org 0000h
clr P2.3
HERE:cpl P2.3    	    ; clear P2.3
MOV TMOD,#01   	    ; Timer 0, mode 1 (16-bit mode)
MOV TL0,#00H   ; TL0 = 00 (HEX)Low byte
MOV TH0,#0EEH 		; TH0 = EE (HEX)High byte
;SETB P2.3 			; SET P2.3 high
SETB TR0			; start timer 0
AGAIN:JNB TF0,AGAIN ; monitor timer 0 flag until its rolls over
;CLR P2.3			 ; clear p2.3
CLR TR0 			 ; stop timer 0
CLR TF0			     ; clear timer 0 flag
SJMP HERE
