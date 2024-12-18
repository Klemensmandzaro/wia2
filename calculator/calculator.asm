org 100h

;mov AH, 0Ah
;mov DX, liczba
;int 21h

mov BX, liczba+4
mov CX, 0
mov DX, 10
;naprawic

petla:
	dec BX
	mov AL, [BX]
	sub AL, 30h
	MUL DL
	add CX, AX
	mov AX, 0xA
	MUL DX
	mov DX, AX
	cmp BX, liczba
JG petla



;mov liczba, BX

mov AH, 00h
int 21h



liczba db "9570"