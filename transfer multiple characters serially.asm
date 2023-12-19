ORG 0000H
		MOV TMOD, #20H
		MOV TH1, #-3                                   ; FOR 9600 BAUD RATES
		MOV SCON, #01000000B                    ;40H
	    SETB TR1
        MOV A,#'B'
		ACALL HERE
		MOV A,#'V'
		ACALL HERE
		MOV A,#'D'
		ACALL HERE
		MOV A,#'U'
		ACALL HERE
		MOV A,#'C'
		ACALL HERE
		MOV A,#'O'
		ACALL HERE
		MOV A,#'E'
		ACALL HERE
		AGAIN:SJMP AGAIN
		
HERE : MOV SBUF,A
WAIT: JNB TI,WAIT
     	CLR TI	
        RET
END
