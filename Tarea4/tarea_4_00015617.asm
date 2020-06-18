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
	inc 	si
	jmp	lupi	

texto:	mov	ah, 09h
	int 	21h
	ret