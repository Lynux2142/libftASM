section .text
	global ft_memcpy

ft_memcpy:
	enter	0, 0
while:
	cmp		rdx, 0
	je		endw
	mov		rax, [rsi]
	stosb
	inc		rsi
	dec		rdx
	jmp		while
endw:
	leave
	ret
