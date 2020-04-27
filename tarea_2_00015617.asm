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
mov cx, [len]
lupi:  mov bl, [comnt+di] 
       mov [di+200h],bl
       inc	di
       loop	lupi


;ejercicio 2

mov ax, 2d
mov cx, 2d
mov si, 0d

primero: 
	mul cx
	mov [si+210h],ax
	inc	si
	jb primero

segundo: 
    mul cx,
    mov [si+210h],ax
    inc si
    cmp si, 14d
    jb segundo


;ejercicio 3

mov	cx, 0000h
mov	si, 0d


mov	ax, 0d
mov	bx, 1d
mov	[si+220h], ax
inc	si
mov	[si+220h], bx
inc	si

fibonacci:
	add	bx, ax
	mov	[si+220h], bx
	mov	ax, dx
	inc	si
	loop	fibonacci

int 20h

section .data
comnt db "Me recupero"
len equ $-comnt