;Filename: PRELIM.ASM
;CS243 Lab Prelim Exam First Semester SY 2024-2025
;Student Name: JOHN WINSTON W. TABADA
;Date: September 13,2024

.model small
.stack 100h
.data
	file    db '                                                                               ', 0dh, 0ah
            db '                   Cebu Institute of Technology - University                   ', 0dh, 0ah
            db '                       VEHICLE STICKER APPLICATION FORM                        ', 0dh, 0ah
            db '                        Please fill out form below.                            ', 0dh, 0ah, 0ah
            db '   Personnel Type:           _______ V     Vehicle Sticker Type:  _________ V  ', 0dh, 0ah
            db '   Name of Applicant/Driver: __________    ID Number:             ____________ ', 0dh, 0ah
            db '   Mobile Number:            __________    Address:               ____________ ', 0dh, 0ah
            db '   Vehicle Make(s)/Brand:    __________    Plate Number:          ____________ ', 0dh, 0ah
            db '   Vehicle Color:            _______ V     Vehicle Type:          _________ V  ', 0dh, 0ah, 0ah, 0ah
            db '                                      SUBMIT                                   ', 0dh, 0ah, 0ah
            db '                        Copyright 2024 JOHN WINSTON W. TABADA                  ', 0dh, 0ah, 0ah, 0ah
            db '                                    Thank You!                                 ', 0dh, 0ah, '$'

.code

; gray background
fillGrayBg proc
    mov ah, 06h
    mov bh, 070h
    int 10h
    ret
fillGrayBg endp
 
; red background
fillRedBg proc
    mov ah, 06h
    mov bh, 4Fh
    int 10h
    ret
fillRedBg endp
 
; Dropdown
dropDownCell proc
    mov ah, 06h
    mov bh, 4Fh
    int 10h
    ret
dropDownCell endp
 
; Input Cell color Fill
inputCell proc
    mov ah, 06h
    mov bh, 17h
    int 10h
    ret
inputCell endp
 
; submit button color
button proc
    mov ah, 06h
    mov bh, 4Eh ; yellow text with red background
    int 10h
    ret
button endp
 
main proc
    ;to force the start of the display at the 3rd line
    mov ax, 3
    int 10h
    
    ; for reference
    ; mov ch, 0 <- height position
    ; mov cl, 0 <- length position
    ; mov dh, 0 <- 2nd height position
    ; mov dl, 0 <- 2nd length position
    ; call <func> <- call function

    ; gray border left
    mov ch, 3
    mov cl, 2
    mov dh, 3
    mov dl, 2
    call fillGrayBg
 
    ; gray border right
    mov ch, 1
    mov cl, 78
    mov dh, 3
    mov dl, 78
    call fillGrayBg
 
    ; red background fill
    mov ch, 3
    mov cl, 3
    mov dh, 3
    mov dl, 77
    call fillRedBg
 
    ; clear out the al register
    xor al, al
 
    ; hightlight text to yellow
    mov ah, 06h
    mov ch, 3
    mov cl, 3
    mov dh, 3
    mov dl, 76
    mov bh, 0CEh ; yellow color ang blink
    int 10h
 
    ; background gray
    mov ch, 4
    mov cl, 2
    mov dh, 15
    mov dl, 78
    call fillGrayBg
 
    ;input cell color
    mov ch, 5
    mov cl, 29
    mov dh, 9
    mov dl, 38
    call inputCell
 
    ; 1st dropdown icon
    mov ch, 5
    mov cl, 36
    mov dh, 5
    mov dl, 38
    call dropDownCell
 
    ; 2nd dropdown icon
    mov ch, 9
    mov cl, 36
    mov dh, 9
    mov dl, 38
    call dropDownCell
 
    ;input cell color
    mov ch, 5
    mov cl, 66
    mov dh, 9
    mov dl, 77
    call inputCell
 
    ; 3rd dropdown icon
    mov ch, 5
    mov cl, 75
    mov dh, 5
    mov dl, 77
    call dropDownCell
 
    ; 4th dropdown icon
    mov ch, 9
    mov cl, 75
    mov dh, 9
    mov dl, 77
    call dropDownCell
 
    ; red button
    mov ch, 12
    mov cl, 36
    mov dh, 12
    mov dl, 45
    call button
 
    ; thank you not thank you
    mov ah, 06h
    mov ch, 17
    mov cl, 0
    mov dh, 17
    mov dl, 78
    mov bh, 08EH;
    int 10h
    
    ;set data
    mov ax, @data
    mov ds, ax
 
    ;print the file
    mov ah, 09h
    lea dx, file
    int 21h

    ;exit program
	mov ah, 4Ch
    int 21h    

main endp
end main
