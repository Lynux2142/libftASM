section .text
	global ft_memset

ft_memset:
	enter	0, 0
	push	rdi
while:
	cmp		rdx, 0
	je		endw
	mov		[rdi], rsi
	inc		rdi
	dec		rdx
	jmp		while
endw:
	pop		rdi
	leave
	ret
