org 100h

push word [a]
push word [b]


pop BX
pop AX
MUL BL	;mnozenie
push AX



push word [c]

pop BX
pop AX
DIV BL
push AX



pop word [y]

mov AH, 00h
int 21h

a dw	5h
b dw 	4h
c dw	2h
y dw 	0h