org 100h

mov AH, 0Ah
mov DX, tekst
int 21h

mov AH, 02h
mov DL, ' '
int 21h

mov AH, 02h
mov DL, ' '
int 21h

mov AH, 02h
mov DL, [tekst+4]
int 21h


mov AH, 00h
int 21h

tekst db 4
