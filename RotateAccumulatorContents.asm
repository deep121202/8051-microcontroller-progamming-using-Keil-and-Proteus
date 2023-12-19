; Rotate the register contents towards right     
    org 0000h
    mov a,#63h
    rr a
    ;xrl a, r
    mov r3,a
; Rotate the register contents towards left     
    mov a,#43h
    rl a
    ;xrl a, r
    mov r4,a
    lcall 0003h
    end
