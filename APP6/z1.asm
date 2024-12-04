org 100h

mov AH, 02h
mov CX, 12

petla:
	mov DL, "H"
	int 21h
	mov DL, 0Dh
	int 21h
	mov DL, 0Ah
	int 21h
	loop petla

mov AH, 00h
int 21h



