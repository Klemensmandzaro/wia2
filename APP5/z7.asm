org 100h

push word [a]
push word 0x2


pop AX
pop BX
MUL BL	;mnozenie
push AX



push word [b]
pop AX
pop BX
mul BL	;mnozenie
push AX



push word [c]
pop AX
pop BX
add AX, BX
push AX

push word [c]
pop AX
pop BX
add AX, BX
push AX





pop word [y]

mov AH, 00h
int 21h

a dw	5h
b dw 	4h
c dw	2h
y dw 	0h