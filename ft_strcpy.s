section.data:

section.text:
	global _ft_strcpy

_ft_strcpy:
	cmp rdi, 0
	jz _return
	cmp rsi, 0
	jz _return
	mov rcx, 0
	jmp _start_loop

_start_loop:
	mov bl, byte[rsi + rcx]
	mov byte [rdi + rcx], bl
	cmp bl, 0
	jz _return
	inc rcx
	jmp _start_loop

_return:
	mov rax,rdi
	ret
