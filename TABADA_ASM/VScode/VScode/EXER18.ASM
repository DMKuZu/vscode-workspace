;Filename: EXER18.ASM
;Programmer Name: JOHN WINSTON W. TABADA
;Date: September 20, 2024
;Description:  This assembly language program will get string input and display the reverse of the string.

.MODEL small
.STACK 100h
.DATA
    MAXIMUM_STRING_LENGTH EQU 1000
    StringToReverse DB MAXIMUM_STRING_LENGTH DUP (?)
    ReverseString DB MAXIMUM_STRING_LENGTH DUP (?)
.CODE
ProgramStart:
    mov ax, @data
    mov ds, ax
    mov ah, 3fh
    mov bx, 0
    mov cx, MAXIMUM_STRING_LENGTH 

    mov dx, OFFSET StringToReverse 
    int 21h
    and ax,ax
    jz Done
    mov cx, ax

    push cx
    mov bx, OFFSET StringToReverse 
    mov si, OFFSET ReverseString
    add si, cx
    dec si

    ReverseLoop:
        mov al, [bx]
        mov [si], al
        inc bx
        dec si 

        loop ReverseLoop
        pop cx
        mov ah, 40h 
        mov bx, 1
        mov dx, OFFSET ReverseString
        int 21h
    
    Done: 
        mov ah, 4ch
        int 21h

END ProgramStart