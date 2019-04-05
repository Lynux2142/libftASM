section .text
	msg		db "Hello World", 0

section .data
	global	hello

hello:
	mov		rax, msg
	ret
