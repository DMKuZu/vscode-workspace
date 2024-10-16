;Filename: EXER20.ASM
;Programmer Name: JOHN WINSTON W. TABADA
;Date: September 20, 2024
;Description:  Create a program that asks user to input a character. 
;              Determine if character is letter A and display message “Yes, you have entered letter A.” 
;              If not, display “No, you have not entered letter A. You entered character _.”

.MODEL small
.STACK 200h
.DATA
    
    input  db      'Enter a character: $'
    isYes  db      'Yes, you have entered letter A.$'
    isNo   db      'No, you have not entered letter A. You entered character $'
    newline db     13,10,'$'
    period db      '.$'
    letter   db      ?
.CODE
Main:      
    mov ax, @data
    mov ds, ax

    mov ah,09h
    lea dx, input
    int 21h

    mov ah,01h
    int 21h
    mov letter,al

    mov ah, 09h
    lea dx, newline
    int 21h

    mov al, letter       
    and al, 5Fh          
    cmp al, 'A'          
    je displayYes       
    jmp displayNo 
  

    displayNo: 
        mov ah,09h
        lea dx, isNo
        int 21h

        mov dl, letter
        mov ah,02h
        int 21h

        mov ah, 09h
        lea dx, period
        int 21h
        jmp terminate

    displayYes:
        mov ah,09h
        lea dx, isYes
        int 21h

    terminate: 
        mov ah, 4Ch
        int 21h

END main

    

