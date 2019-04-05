section .text
	global	ft_bzero

ft_bzero:
	enter	0, 0
	push	rdi

	while:
		cmp		rsi, 0
		jle		endw
		mov		byte[rdi], 0
		inc		rdi
		dec		rsi
		jmp		while
	endw:

	pop		rdi
	leave
	ret
