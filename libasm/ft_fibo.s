section .data
	global	ft_fibo

ft_fibo:
	mov		rax, rdi
	mov		rbx, 0
	mov		rcx, 1

	while:
	cmp		rax, 0
	jle		endw
	cmp		rax, 46
	jg		endw
	mov		rdx, rbx
	add		rdx, rcx
	mov		rbx, rcx
	mov		rcx, rdx
	dec		rax
	jmp		while
	endw:

	mov		rax, rbx
	ret
