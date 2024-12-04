org 100h

;a*b+c
mov DL, [a]
mov AL, [b]
mul DL
add AX, [c]
mov [y], AX

mov AH, 00h
int 21h

a dw	5h
b dw 	4h
c dw	2h
y dw 	0h