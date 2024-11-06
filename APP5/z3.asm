org 100h

push word [a]
push word [b]

pop BX
pop AX
DIV BL	;dzielenie
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