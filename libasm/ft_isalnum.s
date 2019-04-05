%ifdef OSX
	%define SUCCESS 1
%else
	%define SUCCESS 8
%endif

section .text
	global ft_isalnum
	extern ft_isalpha
	extern ft_isdigit

ft_isalnum:
	enter	0, 0
	call	ft_isalpha
	cmp		rax, 0
	jne		success
	call	ft_isdigit
	cmp		rax, 0
	jne		success
	jmp		failed

failed:
	mov		rax, 0
	jmp		exit

success:
	mov		rax, SUCCESS

exit:
	leave
	ret
