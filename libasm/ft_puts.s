%define WRITE 1
%define STDOUT 1

section .data
	msg:
		.string db 10
		.len equ $ - msg.string

section .text
	global ft_puts
	extern ft_strlen

ft_puts:
	enter	0, 0
	cmp		rdi, 0
	je		null
	mov		rsi, rdi
	call	ft_strlen
	mov		rdx, rax
	mov		rax, WRITE
	mov		rdi, STDOUT
	syscall
	mov		rax, WRITE
	mov		rdi, STDOUT
	lea		rsi, [rel msg.string]
	add		rdx, msg.len
	syscall
exit:
	mov		rax, rdx
	leave
	ret
null:
	mov		rax, -1
	leave
	ret
