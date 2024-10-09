org 100h

mov AH, 09
mov DX, tekst
int 21h

mov AH, 00h
int 21h

tekst db "Kamil Klemiato$"