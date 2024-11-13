org 100h

mov AH, 02h
mov DH, 0Ch
mov DL, 26h
int 10h

mov AH, 09h
mov AL, 3
mov BL, 01110100b
mov CX, 1
int 10h

mov AH, 02h
mov DH, 00h
int 10h
mov AH, 09h
mov AL, 5
mov BL, 00000100b
mov CX, 1
int 10h

mov AH, 02h
mov DH, 17h
int 10h
mov AH, 09h
mov AL, 6
mov BL, 01110000b
mov CX, 1
int 10h

mov AH, 00h
int 21h