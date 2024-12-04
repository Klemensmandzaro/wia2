org 100h

przyjmij:
mov AH, 8h
mov AL, tekst
int 21h
mov AH, 02h
mov DL, AL
int 21h


cmp AL, 'Q'
JG przyjmij
JL przyjmij
JE koniec

koniec:
mov AH, 00h
int 21h

tekst db 1