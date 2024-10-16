;Filename: EXER15.ASM
;Programmer Name: JOHN WINSTON W. TABADA
;Date: September 20, 2024
;Description: This assembly language program will continuously get character input and display back input until Enter key is pressed.

.MODEL small
.STACK 200h
.DATA
.CODE
ProgramStart:
    EchoLoop:
        mov ah,1
        int 21h
        cmp al,13
    jz EchoDone

    mov dl,al
    mov ah,2
    int 21h
    jmp EchoLoop
    
    EchoDone:
        mov ah,4ch
        int 21h
END ProgramStart
