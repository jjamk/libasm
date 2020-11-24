section.data:

section.text:
	global _ft_write
	extern ___error

_ft_write:
	mov rax, 0x2000004 ;write syscall
	syscall ;rax에 error value리턴
	jc _error_return  ;syscall error시, 오류가 있을 경우 작은 음수리턴-> CF=1 
	ret

_error_return:
	push rdi
	mov rdi, rax ;syscall에서 에러코드를 받은 rax가 rdi에게 복사(rdi에 rax를 복사해 스택에 백업해두는것)
	call ___error ;rax에 에러 주소값이 담김
	mov [rax], rdi ;rax의 값(error code)인 주소에 rdi를 넣어주기
	pop rdi
	mov rax, -1
	ret
