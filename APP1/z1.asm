org 100h

mov AH, 02h
mov DL, 'A'
int 21h


mov DL, ' '
int 21h


mov DL, 'g'
int 21h

mov AH, 00h
int 21h