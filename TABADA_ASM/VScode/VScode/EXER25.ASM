; Filename: EXER25.ASM
; Programmer Name: JOHN WINSTON W.TABADA
; Date: SEPTEMBER 28, 2024
; Description: This assembly language program will get 3 string inputs and display back the 3 strings on separate lines.

.MODEL SMALL
.STACK 100h
.DATA
    prompt1 DB 'Enter first string: $'
    prompt2 DB 'Enter second string: $'
    prompt3 DB 'Enter third string: $'

    output1 DB 'You entered first string: $'
    output2 DB 'You entered second string: $'
    output3 DB 'You entered third string: $'
    
    input1 DB 50 DUP('$') 
    input2 DB 50 DUP('$')
    input3 DB 50 DUP('$')
    
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

MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    LEA DX, prompt1
    call print
    
    LEA DX, input1
    call scan

    call newLine
    
    LEA DX, prompt2
    call print

    LEA DX, input2
    call scan
    
    call newLine

    LEA DX, prompt3
    call print

    LEA DX, input3
    call scan
    
    call newLine

    LEA DX, output1
    call print
    
    LEA DX, input1 + 2 
    call print
    
    call newLine

    LEA DX, output2
    call print
    
    LEA DX, input2 + 2 
    call print
    
    call newLine
    
    LEA DX, output3
    call print
    
    LEA DX, input3 + 2 
    call print
    
    call newLine

    MOV AX, 4C00h ; DOS function to terminate 
    INT 21h

MAIN ENDP
END MAIN

