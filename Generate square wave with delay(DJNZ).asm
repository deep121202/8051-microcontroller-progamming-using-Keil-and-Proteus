ORG 0000h
BACK: MOV A, #00h
 UP: MOV P2, A
        ACALL DELAY
        MOV A, #0FFh
        MOV P2, A
        ACALL DELAY
        SJMP BACK
	 DELAY:
	 MOV R0, #255
HERE1: MOV R1, #255
HERE: DJNZ R1, HERE
	 DJNZ R0, HERE1
	 RET
