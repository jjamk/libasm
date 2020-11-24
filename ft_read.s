section.data:

section.text:
	global	_ft_read
	extern	___error

_ft_read:
	mov	rax,0x2000003
	syscall
	jc	_error_return
	ret

_error_return:
	push rdi
	mov rdi,rax
	call ___error
	mov [rax], rdi
	pop rdi
	mov rax, -1 
	ret
