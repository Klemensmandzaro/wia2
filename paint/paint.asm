org 100h
mov AH, 00h			;
mov AL, 10h			;wlaczenie trybu graficznego
int 10h				;

mov AX, 1h			;wlaczenie kursora
int 33h				;

main_loop:
	mov AX, 03h		;CX - kolumna poz. myszy
	int 33h			;DX - wiersz poz. myszy
	cmp BX, 1h
		je draw_pixel
	
	mov AH, 01h		;Sprawdzenie klawiatury
	int 16h			;
	cmp AH, 10h
		je koniec
	cmp AH, 2Eh
		je change_color
jmp main_loop

koniec:
	mov AH, 00h
	int 16h
	mov AX, 2h
	int 33h
	mov AH, 00h
	int 21h


draw_pixel:
	mov AH, 0Ch		;
	mov AL, [color]		;Wydruk piksela na poz. myszy
	
	dec CX
	int 10h
	dec DX
	int 10h
	dec CX
	int 10h
	inc CX
	dec DX
	int 10h
	inc DX
	inc CX
	int 10h
	jmp main_loop

change_color:
	mov AH, 00h
	int 16h
	inc byte [color]
	jmp main_loop


color db 00h