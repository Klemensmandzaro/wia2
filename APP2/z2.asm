org 100h

mov AH, 09h
mov DX, tekst
int 21h



mov AH, 02h
mov DL, 0Dh
int 21h
mov DL, 0Ah
int 21h 
;to powyżej daje nowa linie



mov byte [tekst+3], '$'
mov AH, 09h
mov DX, tekst
int 21h



mov AH, 00h
int 21h

tekst db "Kamil Klemiato$"