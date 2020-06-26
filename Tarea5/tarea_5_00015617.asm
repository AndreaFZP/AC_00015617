org 	100h

section .text

	call 	dibujo

	xor 	si, si
	xor 	di, di
	
	;linea 1
	mov 	si, 50d  ;x
	mov 	di, 120d ;y
	call 	linea1


	;linea3
	mov si, 120d
	mov di, 30d
	call linea3

	;linea5
	mov si, 190d
	mov di, 120d
	call linea5
    
    call 	kb		

	int 	20h

dibujo:mov	ah, 00h
	mov	al, 13h
	int 	10h
	ret

linea:	mov	ah, 0Ch
	mov	al, 1010b
	int 	10h
	ret

linea1: 
lupi1:	mov 	cx, 0d 
	add 	cx, si
	mov	dx, di 
	call 	linea
	inc 	si
	cmp 	si, 75d
	jne 	lupi1
	ret


linea3:
lupi3: mov cx, 0d
	   add cx, si
	   mov dx, di
	   call linea
	   inc si
	   cmp si, 145d
	   jne lupi3
	   ret

linea5:
lupi5: mov cx, 0d
	   add cx, si
	   mov dx, di
	   call linea
	   inc si
	   cmp si, 215d
	   jne lupi5
	   ret



kb: 	mov	ah, 00h
	int 	16h
	ret

section .data