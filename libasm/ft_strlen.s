section .text
	global ft_strlen

ft_strlen:
	enter	0, 0
	mov		rax, rdi
	mov		rbx, rdi
while:
	cmp		byte[rax], 0
	je		endw
	inc		rax
	jmp		while
endw:
	sub		rax, rbx
	leave
	ret
