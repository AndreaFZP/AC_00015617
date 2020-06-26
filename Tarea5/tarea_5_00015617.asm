org 	100h

section .text

	call 	dibujo

	xor 	si, si
	xor 	di, di
	
	mov 	si, 25d  
	mov 	di, 110d 
	call 	linea1

    
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
	cmp 	si, 50d
	jne 	lupi1
	ret



kb: 	mov	ah, 00h
	int 	16h
	ret

section .data