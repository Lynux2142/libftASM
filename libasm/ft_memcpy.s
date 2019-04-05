section .text
	global ft_memcpy

ft_memcpy:
	enter	0, 0
	push	rdi
while:
	cmp		rdx, 0
	je		endw
	mov		al, [rsi]
	mov		[rdi], al
	inc		rdi
	inc		rsi
	dec		rdx
	jmp		while
endw:
	pop		rdi
	leave
	ret
