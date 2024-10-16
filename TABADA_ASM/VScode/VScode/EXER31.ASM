; Filename: EXER31.ASM
; Programmer Name: JOHN WINSTON W.TABADA
; Date: SEPTEMBER 29, 2024
; Description: Create a program to input an integer. Using a loop, display from 1 to the integer value entered by the user.

.MODEL SMALL
.STACK 100h
.DATA
    num dw ?
    prompt db 'Enter an integer: $'
    
.CODE

print proc
    mov ah, 09h
    int 21h
    ret
print endp

scan PROC
    mov  ah, 0AH 
    int  21h
    ret
scan ENDP

newLine PROC  
    mov ah, 02h
    mov dl, 10
    int 21h
    ret
newLine ENDP

converter proc
    push ax
    push bx
    push cx
    push dx

    mov cx, 0            ; Counter for digits
    mov bx, 10           ; Base for decimal conversion

    converter_loop1:
        xor dx, dx           ; Clear DX before dividing
        div bx               ; AX / BX, result in AX, remainder in DX
        push dx              ; Push remainder onto stack
        inc cx               ; Count the number of digits
        cmp ax, 0            ; Check if quotient is zero
        jne converter_loop1       ; Repeat if not

    converter_loop2:
        pop dx               ; Pop the last remainder
        add dl, '0'          ; Convert to ASCII
        mov ah, 02h          ; Print character function
        int 21h              ; Interrupt to print character
        dec cx               ; Decrease the digit counter
        cmp cx, 0            ; Check if finished printing all digits
        jne converter_loop2       ; Continue if not

    pop dx
    pop cx
    pop bx
    pop ax
    ret
converter endp  

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    mov cx, 1

    LEA DX, prompt
    call print
    
    mov ah, 01h
    int 21h 
    sub al, '0'
    mov ah, 0
    mov num, ax

    mov bx, num

    cmp cx, bx 
    jl checker  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    checker:
        mov ah,02h
        mov dl,0ah
        int 21h

        mov ax, cx
        call converter

        inc cx
        cmp cx, bx
        jle checker

        mov ah, 4Ch
        int 21h  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    call converter

    MOV AX, 4C00h ; DOS function to terminate 
    INT 21h

MAIN ENDP
END MAIN

