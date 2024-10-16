; Filename: EXER30.ASM
; Programmer Name: JOHN WINSTON W.TABADA
; Date: SEPTEMBER 29, 2024
; Description: Make a program to input two integers. Compare the two integers. Display which one is smaller and bigger of the two integers.

.MODEL SMALL
.STACK 100h
.DATA
    prompt1  DB 'Enter first integer: $'
    prompt2  DB 'Enter second integer: $'

    input1   dw ?
    input2   dw ?

    big      db 'Bigger: $'
    smol     db 'Smaller: $'
    
.CODE

print proc
    mov ah, 09h
    int 21h
    ret
print endp

newLine PROC  
    mov ah, 02h
    mov dl, 13           ; Carriage return
    int 21h
    mov ah, 02h
    mov dl, 10
    int 21h
    ret
newLine ENDP

readInput PROC
    ; Read a single digit from keyboard and store in AX
    mov ah, 01h
    int 21h
    sub al, '0'          ; Convert from ASCII to integer
    mov ah, 0
    ret
readInput ENDP

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
    
    LEA DX, prompt1
    call print
    call readInput
    mov input1, ax

    call newLine

    LEA DX, prompt2
    call print
    call readInput
    mov input2, ax

    call newLine

    mov ax, input1
    mov bx, input2
    cmp ax, bx
    jg isBigger
    jl isSmoler
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    isBigger:
        lea dx, big
        call print

        mov ax, input1
        call converter

        call newLine

        lea dx, smol
        call print

        mov ax, input2
        call converter

        jmp terminate
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    isSmoler:
        lea dx, big
        call print

        mov ax, input2
        call converter

        call newLine
        
        lea dx, smol
        call print

        mov ax, input1
        call converter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    terminate:
        MOV AX, 4C00h ; DOS function to terminate 
        INT 21h

MAIN ENDP
END MAIN

