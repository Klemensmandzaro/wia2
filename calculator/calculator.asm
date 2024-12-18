org 100h

;mov AH, 0Ah
;mov DX, liczba
;int 21h

mov BX, liczba+4
mov CX, 0
mov DX, 10
mov byte [licznik], 0
mov byte [licznik2], 0
mov AX, 0


petla:
	dec BX
	mov AX, 0
	mov AL, [BX]
	sub AL, 30h
	mov BP, [licznik2]
	cmp BP, [licznik]
JG mnozenie
petla2:
	inc byte [licznik2]
	add CX, AX
	mov byte [licznik], 0
	cmp BX, liczba
JG petla
mov word [liczba], CX
jmp koniec

mnozenie:
		mul DX
		mov DX, 10
		inc byte [licznik]
		cmp BP, [licznik]
JG mnozenie
JE petla2

;mov liczba, BX
koniec:
	mov AH, 00h
	int 21h

licznik2 dw 1
licznik dw 1
liczba db "9570"