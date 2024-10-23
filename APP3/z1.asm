org 100h

mov AH, 8h
mov AL, tekst
int 21h

cmp AL, 5Fh

JE rowne
JL mniejsze
JG wieksze

rowne:
mov AH, 02h
mov DL, "="
mov DL, "="
int 21h
jmp koniec

mniejsze:
mov AH, 02h
mov DL, "<"
int 21h
jmp koniec

wieksze:
mov AH, 02h
mov DL, ">"
int 21h
jmp koniec

koniec:
mov AH, 00h
int 21h

tekst db 1