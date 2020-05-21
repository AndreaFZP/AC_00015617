	org 	100h

section .text

	call 	texto	
	call 	cursor
	call 	frase
	call	kbwait

	int 	20h

texto:	mov 	ah, 00h
	mov	al, 03h
	int 	10h
	ret

cursor: mov	ah, 01h
	mov 	ch, 00000000b
	mov 	cl, 00001110b
		;   IRGB
	int 	10h
	ret

w_char:	mov 	ah, 09h
	mov 	al, cl
	mov 	bh, 0h
	mov 	bl, 00001111b
	mov 	cx, 1h
	int 	10h
	ret

kbwait: mov 	ax, 0000h
	int 	16h
	ret

m_cursr:mov 	ah, 02h
	mov 	dx, di  ; guardará la posición de las columnas
	mov 	dh, ch ; guardará la posición de las filas
	mov 	bh, 0h
	int 	10h
	ret


frase:	mov 	di, 25d
text1:	mov 	cl, [msg1+di-25d]
        mov     ch, 5d
	    call    m_cursr
	    call 	w_char
	    inc	    di
	    cmp 	di, len1
	    jb	    text1
        mov     di, 5d
	    

text2:	mov 	cl, [msg2+di-5d]
        mov     ch, 13d
	    call    m_cursr
	    call 	w_char
	    inc	    di
	    cmp 	di, len2
	    jb	    text2
        mov     di, 45d
	    

text3:	mov 	cl, [msg3+di-45d]
        mov     ch, 20d
	    call    m_cursr
	    call 	w_char
	    inc	    di
	    cmp 	di, len3
	    jb	    text3
	    ret

;Distintos mensajes
section .data
msg1	db 	"What's a mob to a king?"
len1 	equ	$-msg1+25d

msg2	db 	"What's a king to a god?"
len2 	equ	$-msg2+5d

msg3	db 	"What's a god to a non-believer?"
len3 	equ	$-msg3+45d