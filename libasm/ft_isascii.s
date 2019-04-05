%ifdef OSX
	%define SUCCESS 1
%else
	%define SUCCESS 1
%endif

section .text
	global ft_isascii

ft_isascii:
	enter	0, 0
	cmp		rdi, 0
	jl		failed
	cmp		rdi, 127
	jg		failed
	jmp		success

failed:
	mov		rax, 0
	jmp		exit

success:
	mov		rax, SUCCESS

exit:
	leave
	ret
