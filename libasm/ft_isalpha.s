%ifdef OSX
	%define SUCCESS 1
%else
	%define SUCCESS 1024
%endif

section .text
	global ft_isalpha

ft_isalpha:
	enter	0, 0
	cmp		rdi, 'A'
	jl		failed
	cmp		rdi, 'Z'
	jle		success
	cmp		rdi, 'z'
	jg		failed
	cmp		rdi, 'a'
	jge		success

failed:
	mov		rax, 0
	jmp		exit

success:
	mov		rax, SUCCESS

exit:
	leave
	ret
