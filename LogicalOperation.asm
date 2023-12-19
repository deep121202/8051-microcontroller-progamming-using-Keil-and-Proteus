org 0000h
; addition without carry
    mov a, #06h
    mov b, #09h
    add a, b
    mov r0, a
;Substraction with carry
    mov a, #08h
    subb a,#03h
    mov r1, a
; multiplication
    mov a, #03h
    mov b, #06h
    mul ab
    mov r2, a
; division
    mov a, #08h
    mov b, #03h
    div ab
    mov r3, a
    mov r4, b
; increment operation
    mov a, #03h
    inc a
    mov r5, a
; decrement operation
    mov r6, #07h
    dec r6
    lcall 0003h
    end
