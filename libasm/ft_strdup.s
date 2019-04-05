section .text
	global	ft_strdup
	extern	ft_strlen
	extern	ft_memcpy
	extern	malloc

ft_strdup:
	enter	0, 0
	push	rdi
	cmp		rdi, 0
	je		exit
	call	ft_strlen
	mov		r9, rax
	mov		r10, rdi
	mov		rdi, rax
	call	malloc wrt ..plt
	mov		rdi, rax
	mov		rsi, r10
	mov		rdx, r9
	call	ft_memcpy
	pop		rax
exit:
	leave
	ret
