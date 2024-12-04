org 100h

mov AH, 08h
mov BX, a
mov DL, 0h
wczytanie:
	add BL, 1
	add DL, 1
	int 21h
	mov [BX], AL

cmp AL, 0Dh
JNE wczytanie

mov CL, DL
mov AH, 02h
mov BL, 0h
mov BX, a
wypisanie:	
	add BL, 1
	mov DL, [BX]
	int 21h
	loop wypisanie
	
mov AH, 00h
int 21h

a dw	5h