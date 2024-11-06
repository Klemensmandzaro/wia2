org 100h

push word [a]
push word [a]
pop AX
pop BX
add AX, BX
push AX

push word [b]
push word [b]
pop AX
pop BX
add AX, BX
push AX

pop AX
pop BX
add AX, BX
push AX

push word [c]
push word [c]
pop AX
pop BX
add AX, BX
push AX

pop AX
pop BX
sub AX, BX
push AX


pop word [y]

mov AH, 00h
int 21h

a dw	5h
b dw 	4h
c dw	2h
y dw 	0h