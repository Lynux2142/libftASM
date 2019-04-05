section .text
	global ft_tolower

ft_tolower:
	enter	0, 0
	cmp		rdi, 65
	jl		exit
	cmp		rdi, 90
	jg		exit
	add		rdi, 32

exit:
	mov		rax, rdi
	leave
	ret
