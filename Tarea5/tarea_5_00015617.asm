org 	100h

section .text

	call 	dibujo

	xor 	si, si
	xor 	di, di
	
	;linea 1
	mov 	si, 30d  ;x
	mov 	di, 120d ;y
	call 	linea1

	;linea2
	mov si, 120d
	mov di, 30d
	call linea2

	;linea3
	mov si, 120d
	mov di, 30d
	call linea3

	;linea4
	mov si, 145d
	mov di, 30d
	call linea4

	;linea5
	mov si, 210d
	mov di, 120d
	call linea5

	;linea6
	mov si, 140d
	mov di, 50d
	call linea6

	;linea7
	mov si, 140d
	mov di, 50d
	call linea7
    
	;linea8
	mov si, 110d
	mov di, 80d
	call linea8

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
	cmp 	si, 70d
	jne 	lupi1
	ret

linea2:
lupi2:     mov cx, si
	   mov dx, 0d
	   add dx, di
	   call linea
	   inc di
	   sub si, 1d
	   cmp di, 120d
	   jne lupi2
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

linea4:
lupi4: mov cx, si
	   mov dx, 0d
	   add dx, di
	   call linea
	   inc di
	   inc si
	   cmp di, 120d
	   jne lupi4
	   ret

linea5:
lupi5: mov cx, 0d
	   add cx, si
	   mov dx, di
	   call linea
	   inc si
	   cmp si, 235d
	   jne lupi5
	   ret

linea6:
lupi6: mov cx, si
	   mov dx, 0d
	   add dx, di
	   call linea
	   inc di
	   inc si
	   cmp di, 120d
	   jne lupi6
	   ret

linea7:
lupi7: mov cx, si
	   mov dx, 0d
	   add dx, di
	   call linea
	   inc di
	   sub si, 1d
	   cmp di, 120d
	   jne lupi7
	   ret

linea8:
lupi8: mov cx, 0d
	   add cx, si
	   mov dx, di
	   call linea
	   inc si
	   cmp si, 170d
	   jne lupi8
	   ret


kb: 	mov	ah, 00h
	int 	16h
	ret

section .data