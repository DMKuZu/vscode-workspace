;Filename: EXER19.ASM
;Programmer Name: JOHN WINSTON W. TABADA
;Date: September 20, 2024
;Description:  Create a program that asks the user to input 3 characters. Then display each character on its own line.

.MODEL small
.STACK 200h
.DATA
    FirstChar   db ?    
    SecondChar  db ? 
    ThirdChar   db ?                      
    FirstInput  db 'Enter first character: $'
    SecondInput db 13,10,'Enter second character: $'
    ThirdInput  db 13,10,'Enter third character: $'
    FirstMsg    db 13,10,10,'The first character is $'
    SecondMsg   db 13,10,'The second character is $'
    ThirdMsg    db 13,10,'The third character is $'
    period      db '.$'
.CODE

first proc
    mov dx,offset FirstInput
    mov ah,09h
    int 21h
    mov ah,01h                 
    int 21h                   
    mov FirstChar,al           
first endp

second proc
    mov dx,offset SecondInput
    mov ah,09h
    int 21h
    mov ah,01h                 
    int 21h                   
    mov SecondChar,al           
second endp

third proc
    mov dx,offset ThirdInput
    mov ah,09h
    int 21h
    mov ah,01h                 
    int 21h                   
    mov ThirdChar,al           
third endp

displayFirst proc
    mov dx,offset FirstMsg
    mov ah,09h
    int 21h
    mov dl, FirstChar         
    mov ah,02h                 
    int 21h     
    mov dx,offset period             
displayFirst endp

displaySecond proc
    mov dx,offset SecondMsg
    mov ah,09h
    int 21h
    mov dl, SecondChar         
    mov ah,02h                 
    int 21h     
    mov dx,offset period           
displaySecond endp

displayThird proc
    mov dx,offset ThirdMsg
    mov ah,09h
    int 21h
    mov dl, ThirdChar         
    mov ah,02h                 
    int 21h     
    mov dx,offset period
    mov ah,09h
    int 21h   
    mov ax, 4C00h
    int 21h          
displayThird endp

Main:
    mov ax, @data
    mov ds, ax

    call first
    call second  
    call third       

    call displayFirst
    call displaySecond
    call displayThird

END main

    

