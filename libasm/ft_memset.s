section .text
	global ft_memset

ft_memset:
	enter	0, 0
	mov		rax, rsi
while:
	cmp		rdx, 0
	je		endw
	stosb
	dec		rdx
	jmp		while
endw:
	leave
	ret
