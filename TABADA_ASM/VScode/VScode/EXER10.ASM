.model small
.stack 100h
.data
    

    formName db 'CIT-U COLLEGE ENROLLMENT FORM       $'
    subtitle db 'Complete the registration form with attention to detail$'
    
    row1     db 'Full Name            [                                  ]   [                                  ]$'
    row2     db '                      First Name                           Last Name$'
    row3     db 'Address              [                                                                         ]$'
    row4     db '                      Street Address$'
    row5     db '                     [                                  ]   [                                  ]$'
    row6     db '                      City                                 State/Province$'
    row7     db 'Birth Date           [                      ]   [                     ]    [                   ]$'
    row8     db '                      Month                    Day                      Year         $'
    row9     db 'Gender               [ ] Male                   [ ] Female              [ ] N/A       $'
    row10    db 'Student Number       [                                                                         ]$'
    row11    db '                      Phone Number$'
    row12    db 'Student Email        [                                                                         ]$'
    row13    db '                      example@example.com$'
    row14    db 'Company              [                                                                         ]$'
    row15    db 'Courses              [ ] English 101            [ ] English 102         [ ] Creative Writing 1  $'
    row16    db '                     [ ] Creative Writing 2     [ ] History 101         [ ] History 102   $'
    row17    db '                     [ ] Math 101               [ ] Math 102            [ ] Windows 8   $'
    row18    db 'Additional Comments  [                                                                         ]$'
    

    lineDate db ' ------------------- $'
    date2    db '|Date:              |$'
.code
main proc
    ;set data
         mov ax, @data
         mov ds, ax

    ;title part
         mov ah, 09h
         lea dx, formName
         int 21h
         mov ah, 02h
         mov cl, 0Ah
         mov dl, cl
         int 21h

         mov ah, 09h
         lea dx, subtitle
         int 21h
         mov ah, 02h
         mov cl, 0Ah
         mov dl, cl
         int 21h
         mov ah, 02h
         mov cl, 0Ah
         mov dl, cl
         int 21h

    ;full name
         mov ah, 09h
         lea dx, formName
         int 21h

    

    


    
    
    ;exit program
         mov ah, 4Ch
         int 21h
	
main endp
end main
