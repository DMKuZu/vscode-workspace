;Filename: EXER12.ASM
;Programmer Name: JOHN WINSTON W. TABADA
;Date: September 20, 2024
;Description: This assembly language program will display multiple string variables on a single line.

.MODEL small
.STACK 200h
.DATA
String1 DB 'Line1','$' 
String2 DB 'Line2','$'
String3 DB 'Line3','$'
.CODE
ProgramStart:
    mov ax,@data
    mov ds,ax
    mov ah,9 
    mov dx,OFFSET String1 
    int 21h 
    mov dx,OFFSET String2 
    int 21h 
    mov dx,OFFSET String3 
    int 21h 
    mov ah,4ch 
    int 21h 
END ProgramStart 