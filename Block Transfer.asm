ORG 0000h
mov r7, #0Ah; initialize counter by 10d
mov r0,#20h ; get initial source location
mov dptr,#1020h ; get initial destination location
nxt:mov a,@r0 ; get first content in acc
movx @dptr,a  ; move it to external location
inc r0         ; increment source location
inc dptr       ; increase destination location
djnz r7,nxt    ; decrease r7. If zero then over otherwise move next
end

