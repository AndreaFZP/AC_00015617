org 100h

;ejercicio 1

mov ax, 1d
mov bx, 5d
add ax,bx
mov bx, 6d
add ax, bx
mov bx, 1d
add ax,bx
mov bx, 7d
add ax,bx

mov bx, 5d

div bx

section .text
mov di, 0d
mov cx, len
lupi:  mov bl, [comnt+di] 
       mov [di+200h],bl
       inc	di
       loop	lupi



int 20h

section .data
comnt db "Me recupero"
len equ $-comnt