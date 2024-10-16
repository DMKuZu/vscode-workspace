;Filename: EXER1.ASM
;Displaying single characters, numbers, and symbols
;JOHN WINSTON W. TABADA
;Date: August 30, 2024

.model small
.code
.stack 100h

start:
	
	mov ah,02h
	mov cl,61h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,62h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,63h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,64h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,65h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,66h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,67h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,68h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,69h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Ah
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Bh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Ch
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Dh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Eh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,6Fh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,70h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,71h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,72h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,73h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,74h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,75h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,76h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,77h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,78h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,79h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,7Ah
	mov dl,cl
	int 21h
	
	;new line
	mov ah,02h
	mov cl,0Ah
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,41h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,42h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,43h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,44h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,45h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,46h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,47h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,48h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,49h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Ah
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Bh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Ch
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Dh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Eh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,4Fh
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,50h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,51h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,52h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,53h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,54h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,55h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,56h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,57h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,58h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,59h
	mov dl,cl
	int 21h
	
	mov ah,02h
	mov cl,5Ah
	mov dl,cl
	int 21h
	
	
int 27h
end start

	