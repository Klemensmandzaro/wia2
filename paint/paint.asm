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
	cmp AH, 4Eh
		je inc_brush_size
	cmp AH, 4Ah
		je dec_brush_size
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
	mov byte [sizex], 0h
	dec CX
	
	outer_loop:
	mov BL, 0h
		inner_loop:
			int 10h
			dec CX
			inc BL
			cmp BL, [brush_size]
		jl inner_loop
		dec DX
		add CX, [brush_size]
		inc byte [sizex]
		mov BL, [sizex]
		cmp BL, [brush_size]
	jl outer_loop
	
jmp main_loop

change_color:
	mov AH, 00h
	int 16h
	inc byte [color]
	jmp main_loop

inc_brush_size:
	mov AH, 00h
	int 16h
	inc word [brush_size]
	jmp main_loop
	
dec_brush_size:
	mov AH, 00h
	int 16h
	dec word [brush_size]
	jmp main_loop

color db 00h
brush_size dw 3h
sizex db 0h