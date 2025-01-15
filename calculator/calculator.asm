org 100h

;mov AH, 0Ah
;mov DX, liczba
;int 21h
mov word [ktoraliczba], 0

poczatek:
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
mov CX, 0
cmp CX, [ktoraliczba]
JE poczatek2
JNE obliczanie


mnozenie:
		mul DX
		mov DX, 10
		inc byte [licznik]
		cmp BP, [licznik]
JG mnozenie
JE petla2

poczatek2:
	mov BX, word [liczba]
	mov CX, word [liczba2]
	mov DX, word [liczba2+2]
	mov word [liczba], CX
	mov word [liczba+2], DX
	mov word [liczba2], BX
	inc word [ktoraliczba]
	jmp poczatek
	
	
obliczanie:
	mov AX, word [liczba2]
	mov BX, word [liczba]
	mov CL, byte [znak]
	cmp CL, "+"
JE dodawanie
	cmp CL, "-"
JE odejmowanie
	cmp CL, "*"
JE mnozenie2
	cmp CL, "/"
JE dzielenie
	
dodawanie:
	add AX, BX
	jmp wynik
	
odejmowanie:
	sub AX, BX
	jmp wynik
	
mnozenie2:
	mul BX
	jmp wynik
	
dzielenie: 
	div BX
	jmp wynik


wynik:
	cmp AX, 0
JE odczyt
	xor DX, DX
	mov BX, 10
	div BX
	add DX, 0x30
	mov BP, wynikek
	add BP, word [licznik3]
	add word [licznik3], 1
	mov [BP], DL
	jmp wynik
	
odczyt:
	mov CX, word [licznik3]
	mov AH, 02h
	petla3:
	mov DL, [BP]
	int 21h
	dec BP
	loop petla3

koniec:
	mov AH, 00h
	int 21h

licznik2 dw 1
licznik dw 1
ktoraliczba dw 1
liczba db "2137"
znak db "+"
liczba2 db "0002"
licznik3 dw 0
wynikek dw 0
