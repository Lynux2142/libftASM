section .text
	global ft_strcat

ft_strcat:
	enter	0, 0
	mov		rcx, rdi ;dest
	mov		rbx, rsi ;src

	while:
		cmp		byte[rcx], 0
		je		endw
		inc		rcx
		jmp		while
	endw:

	while2:
		cmp		byte[rbx], 0
		je		endw2
		mov		al, byte[rbx]
		mov		byte[rcx], al
		inc		rcx
		inc		rbx
		jmp		while2
	endw2:

	mov		rax, rdi
	leave
	ret
