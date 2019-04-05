%ifdef OSX
	%define SUCCESS 1
%else
	%define SUCCESS 2048
%endif

section .text
	global ft_isdigit

ft_isdigit:
	enter	0, 0
	cmp		rdi, '0'
	jl		failed
	cmp		rdi, '9'
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
