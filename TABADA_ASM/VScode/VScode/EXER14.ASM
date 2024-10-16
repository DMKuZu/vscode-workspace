.MODEL small
.STACK 200h
.DATA
    inputChar db ?
    inputMsg  db 'Enter a character: $'
    outputMsg db 'You entered: $'
.CODE
Main:
    mov ax, @data
    mov ds, ax
    mov dx, offset inputMsg
    mov ah, 09h
    int 21h
    mov ah, 01h
    int 21h
    mov inputChar, al
    mov dx, offset outputMsg
    mov ah, 09h
    int 21h
    mov dl, inputChar
    mov ah, 02h
    int 21h
    mov ax, 4C00h
    int 21h
END Main
