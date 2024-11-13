org 100h

mov AH, 02h
mov DH, 0Ch
mov DL, 26h
int 10h

mov DL, "7"
int 21h

mov AH, 00h
int 21h