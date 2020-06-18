org 	100h

section .text

	xor 	si, si
	mov	bl, 0d
	mov	bh, 0d

input:	mov 	dx, nl
	call 	texto
	cmp	si, 5d
	je	promedio
	mov 	dx, inputmsg
	call 	texto

lupi:	call 	kb
	cmp 	al, "$"
	je	input
	mov	[300h+si], al

       sub	al, 48d
	mov	ah, 0d
	add	bl, al

	inc 	si
	jmp	lupi	

texto:	mov	ah, 09h
	int 	21h
	ret

promedio:	mov 	dx, nl ; se calcula el promedio de todos los últimos digitos
	call 	texto ; acorde al resultado se desplegará el mensaje correspondiente
	mov	ax, 0h
	mov	al, bl
	mov	cl, 5d
	div	cl
	call	comp

most:	mov	byte [300h+si], "$"
	mov 	dx, 300h
	call 	texto
	ret

if1:	mov 	dx, msg1 ;se añaden los mensajes a la celda
	call 	mostr
	ret

if2:	mov 	dx, msg2
	call 	mostr
	ret

if3:	mov 	dx, msg3
	call 	mostr
	ret

if4:	mov 	dx, msg4
	call 	mostr
	ret

if5:	mov 	dx, msg5
	call 	mostr
	ret	

if6:	mov 	dx, msg6
	call 	mostr
	ret	

if7:	mov 	dx, msg7
	call 	mostr
	ret	

if8:	mov 	dx, msg8
	call 	mostr
	ret	

if9:	mov 	dx, msg9
	call 	mostr
	ret	

if10:	mov 	dx, msg10
	call 	mostr
	ret	

comp:cmp	al, 1d ;se compara el resultado del promedio con cada numero y salta hacia atrás si es igual
	jbe	if1
	cmp	al, 2d
	jbe	if2
	cmp	al, 3d
	jbe	if3
	cmp	al, 4d
	jbe	if4
	cmp	al, 5d
	jbe	if5
	cmp	al, 6d
	jbe	if6
	cmp	al, 7d
	jbe	if7
	cmp	al, 8d
	jbe	if8
	cmp	al, 9d
	jbe	if9
	cmp	al, 10d
	jbe	if10

mostr:	call 	texto
	call 	kb	
	int 	20h

kb: 	mov	ah, 1h
	int 	21h
	ret

section	.data

inputmsg	db	"Escriba su nota : $"
msg1	db 	"Solo necesito el 0$"
msg2	db 	"Aun se pasa$"
msg3	db 	"Hay salud$"
msg4	db 	"Me recupero"
msg5	db 	"En el segundo$"
msg6	db 	"Peor  nada$"
msg7	db 	"Muy bien$"
msg8	db 	"Colocho $"
msg9	db 	"Siempre me esfuerzo$"
msg10	db 	"Perfecto solo Dios$"
nl 	db 	0xA, 0xD, "$"