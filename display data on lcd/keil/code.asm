ORG 0000H
;Use 2 lines and 5x7 matrix	
MOV A,#38H 
ACALL COMNWRT 
ACALL DELAY 
; Cursor blinking OFF and display ON
MOV A, #0EH 
ACALL COMNWRT 
ACALL DELAY 
; Clear screen
MOV A, #01 
ACALL COMNWRT 
ACALL DELAY 
; Increment cursor
MOV A, #06H 
ACALL COMNWRT 
ACALL DELAY 
; Cursor line1, position 7
MOV A, #86H 
ACALL COMNWRT 
ACALL DELAY 
MOV A, #'Y' 
ACALL DATAWRT 
ACALL DELAY 
MOV A, #'E' 
ACALL DATAWRT 
ACALL DELAY 
MOV A, #'S' 
ACALL DATAWRT 
AGAIN: SJMP AGAIN 

COMNWRT: 
 MOV P1, A 
 CLR P3.5; RS pin, RS=0 command register, RS=1 Data register
 CLR P3.4; R/WR operation, Read active high and WR active low
SETB P3.3; enable pin active high
 ACALL DELAY 
 CLR P3.3 
 RET
 
DATAWRT: 
 MOV P1, A 
 SETB P3.5 
 CLR P3.4 
 SETB P3.3 
 ACALL DELAY 
 CLR P3.3 
 RET 
 
DELAY:
MOV R5, #0AH
AGAIN1: MOV R3, #0FFH
BACK: DJNZ R3, BACK
DJNZ R5, AGAIN1
RET
