; Filename: EXER29.ASM
; Programmer Name: JOHN WINSTON W.TABADA
; Date: SEPTEMBER 29, 2024
; Description: Make a program to input two integers, divide the first by the second integer, and display the quotient of the two integers.

.MODEL SMALL
.STACK 100h
.DATA
    prompt1  DB 'Enter dividend: $'
    prompt2  DB 'Enter divisor: $'
    divZero  DB 'Error: Division by zero is not allowed.$', 13, 10
    error    DB 13,10,'Invalid input. Please enter a number: $', 13, 10

    input1   dw ?
    input2   dw ?
    quo      dw ?

    res      db 'Quotient: $'
    
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

inputNumber PROC
    ; This procedure collects multi-digit input from the user
    mov bx, 0            ; Clear BX for storing the number
    input_loop:
        mov ah, 01h       ; Read character from keyboard
        int 21h
        cmp al, 13        ; Enter key (carriage return) ends input
        je done_input

        cmp al, '0'
        jb invalid_input
        cmp al, '9'
        ja invalid_input

        sub al, '0'       ; Convert ASCII to integer
        mov ah, 0
        mov cx, 10
        mul cx            ; Multiply by 10 to shift digits left
        add bx, ax        ; Add the new digit to the number
        jmp input_loop

    invalid_input:
        lea dx, error
        call print
        jmp input_loop

    done_input:
        mov ax, bx        ; Store result in AX
        ret
inputNumber ENDP

checkAndHandleZero PROC
    cmp bx, 0
    jne continueDivision
    lea dx, divZero
    call print
    mov ax, 4C00h  ; Terminate program if division by zero
    int 21h

continueDivision:
    ret
checkAndHandleZero ENDP

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, prompt1
    call print
    call inputNumber
    mov input1, ax

    LEA DX, prompt2
    call print
    call inputNumber
    mov input2, ax

    mov ax, input1
    mov bx, input2 
    call checkAndHandleZero

    xor dx, dx
    div bx
    mov quo, ax    

    LEA DX, res
    call print
    
    mov ax, quo
    call converter

    MOV AX, 4C00h ; DOS function to terminate 
    INT 21h

MAIN ENDP
END MAIN

