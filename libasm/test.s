%define		WRITE 4
%define		STDOUT 1

section .data
	msg:
			.string db "Testing %i...", 0
			.len equ $ - msg.string

section .text
	global	test

test:
	push	rbp
	mov		rbp, rsp
	mov		rax, WRITE
	mov		rbx, STDOUT
	mov		rcx, msg.string
	mov		rdx, msg.len
	int		0x80
	mov		rsp, rbp
	pop		rbp
	mov		rax, msg.len
	ret
