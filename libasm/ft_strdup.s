section .text
	global	ft_strdup
	extern	ft_strlen
	extern	ft_memcpy
	extern	malloc

ft_strdup:
	enter	0, 0
	cmp		rdi, 0
	je		exit
	mov		rax, rdi
	call	ft_strlen
	inc		rax
	mov		r10, rdi
	mov		rdi, rax
	push	r10
	push	rdi
	sub		rsp, 16
	call	malloc
	add		rsp, 16
	pop		rcx
	pop		rsi
	mov		rdi, rax
	cld
	rep		movsb
exit:
	leave
	ret
