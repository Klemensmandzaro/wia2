org 100h

;a*(b/c)
mov AX, [b]
mov DL, [c]
div DL
mov DL, [a]
mul DL


mov [y], AX

mov AH, 00h
int 21h

a dw	5h
b dw 	4h
c dw	2h
y dw 	0h