;Filename: EXER2.ASM
;Displaying single characters, numbers, and symbols
;JOHN WINSTON W. TABADA
;Date: August 30, 2024

.model small
.code
.stack 100h

start:
	
	mov ah,02h
	mov cl,74d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,111d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,104d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,87d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,105d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,115d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,116d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,111d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,87d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,114d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,113d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,117d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,84d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,98d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,100d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
		
	;new line
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,66d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,99d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,104d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,108d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,111d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,114d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,111d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,102d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,83d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,99d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,105d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,99d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,105d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,67d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,111d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,109d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,112d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,117d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,116d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,114d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,83d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,99d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,105d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,99d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,50d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,110d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,100d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,32d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,89d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,101d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,97d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,114d
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,10d
	mov dl,cl
	int 21h
	
	;C
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;L
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	 
	;L
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;G
	mov ah,02h
	mov cl,67h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;F
	mov ah,02h
	mov cl,66h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	 
	;C
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;M
	mov ah,02h
	mov cl,6Dh
	mov dl,cl
	int 21h
	 
	;P
	mov ah,02h
	mov cl,70h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;R
	mov ah,02h
	mov cl,72h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;S
	mov ah,02h
	mov cl,53h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;D
	mov ah,02h
	mov cl,64h
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;S
	mov ah,02h
	mov cl,73h
	mov dl,cl
	int 21h
	 
	;\n
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	 
	;C
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;B
	mov ah,02h
	mov cl,62h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,49h
	mov dl,cl
	int 21h
	 
	;N
	mov ah,02h
	mov cl,6Eh
	mov dl,cl
	int 21h
	 
	;S
	mov ah,02h
	mov cl,73h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;F
	mov ah,02h
	mov cl,66h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,54h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;C
	mov ah,02h
	mov cl,63h
	mov dl,cl
	int 21h
	 
	;H
	mov ah,02h
	mov cl,68h
	mov dl,cl
	int 21h
	 
	;N
	mov ah,02h
	mov cl,6Eh
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;L
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	 
	;O
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	 
	;G
	mov ah,02h
	mov cl,67h
	mov dl,cl
	int 21h
	 
	;Y
	mov ah,02h
	mov cl,79h
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;-
	mov ah,02h
	mov cl,2Dh
	mov dl,cl
	int 21h
	 
	;Space
	mov ah,02h
	mov cl,20h
	mov dl,cl
	int 21h
	 
	;U
	mov ah,02h
	mov cl,55h
	mov dl,cl
	int 21h
	 
	;N
	mov ah,02h
	mov cl,6Eh
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	 
	;V
	mov ah,02h
	mov cl,76h
	mov dl,cl
	int 21h
	 
	;E
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	 
	;R
	mov ah,02h
	mov cl,72h
	mov dl,cl
	int 21h
	 
	;S
	mov ah,02h
	mov cl,73h
	mov dl,cl
	int 21h
	 
	;I
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	 
	;T
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	 
	;Y
	mov ah,02h
	mov cl,79h
	mov dl,cl
	int 21h
	
int 27h
end start