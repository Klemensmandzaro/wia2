org 100h

mov AH, 8h
mov AL, tekst
int 21h

cmp AL, 40h
JG wieksze
JL error

wieksze:
cmp AL, 5bh
JL duza
jmp analiza

analiza:
cmp AL, 60h
JG analiza2
jmp error

analiza2:
cmp AL, 7bh
JL mala
jmp error


duza:
mov AH, 09h
mov DX, giga
int 21h
jmp koniec

mala:
mov AH, 09h
mov DX, malla
int 21h
jmp koniec

error:
mov AH, 09h
mov DX, erior
int 21h
jmp koniec




koniec:
mov AH, 00h
int 21h

tekst db 1
giga db 'Duza litera$'
malla db 'mala litera$'
erior db 'error$'