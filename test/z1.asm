org 100h

mov AH, 0xFF
mov BL, 0x22
sub AH, BL

mov AH, 00h
int 21h