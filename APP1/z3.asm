org 100h

mov AH, 02h
mov DH, 00h
mov DL, 00h
int 10h

mov DL, 'A'
int 21h

mov AH, 00h
int 21h