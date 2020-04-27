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

;ejercicio 2

mov ax, 2d
mov cx, 2d
mov si, 0d

primero: 
	mul cx
	mov [si+210h],ax
	inc	si
	jb primero