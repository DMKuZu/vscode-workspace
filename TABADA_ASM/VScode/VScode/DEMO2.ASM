.model small
.code
.stack 100
    start:
 
        ; print ┐
          mov ah,02h
          mov cl,191 ; 191  ┐   Box Drawings Light Down And Left
          mov dl,cl
          int 21h
         
          int 27h
end start
 
 
 
; 191   ┐   Box Drawings Light Down And Left
; 192   └   Box Drawings Light Up And Right
; 193   ┴   Box Drawings Light Up And Horizontal
; 194   ├   Box Drawings Light Down And Horizontal
; 195   ├   Box Drawings Light Vertical And Right
; 196   ─   Box Drawings Light Horizontal
; 197   ┼   Box Drawings Light Vertical And Horizontal
; 179   │   Box Drawings Light Vertical
; 180   ┤   Box Drawings Light Vertical And Left
; 217   ┘   Box Drawings Light Up And Left
; 218   ┌   Box Drawings Light Down And Right