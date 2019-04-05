%ifdef OSX
	%define SUCCESS 1
%else
	%define SUCCESS 16384
%endif

section .text
	global ft_isprint

ft_isprint:
	enter	0, 0
	cmp		rdi, 32
	jl		failed
	cmp		rdi, 126
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
