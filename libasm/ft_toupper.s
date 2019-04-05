section .text
	global ft_toupper

ft_toupper:
	enter	0, 0
	cmp		rdi, 97
	jl		exit
	cmp		rdi, 122
	jg		exit
	sub		rdi, 32

exit:
	mov		rax, rdi
	leave
	ret
