; Filename: EXER27.ASM
; Programmer Name: JOHN WINSTON W.TABADA
; Date: SEPTEMBER 29, 2024
; Description: Make a program to input two integers, subtract the second integer from the first integer, and display the difference of the two integers.

.MODEL SMALL
.STACK 100h
.DATA
    prompt1 DB 'Enter subtrahend: $'
    prompt2 DB 'Enter minuend: $'
    
    input1 dw ?
    input2 dw ?
    diff   dw ?

    res     db 'Difference: $'
    negSign db '-$'
    
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

    lea dx, res       
    call print

    mov ax, input1
    sub ax, input2
    mov diff, AX
    cmp ax, 0
    jge display_result

    neg ax
    mov diff, ax

    lea dx, negSign
    call print

    display_result:
        mov ax, diff
        call converter
    
    MOV AX, 4C00h ; DOS function to terminate 
    INT 21h

MAIN ENDP
END MAIN

