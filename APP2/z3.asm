org 100h

mov AH, 0Ah
mov DX, tekst
int 21h

mov AH, 02h
mov DL, 0Dh
int 21h
mov DL, 0Ah
int 21h 


mov BL, [tekst+1]
add BX, tekst+2
mov byte [BX], '$'
mov AH, 09h
mov DX, tekst+2
int 21h




mov AH, 00h
int 21h

tekst db 5