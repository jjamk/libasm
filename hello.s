section .data
	msg db "hello world",0x0A ;0x0A는 개행

section .text
	global _main ;전역에서 접근 가능. 언더바(_)는 대부분 c언어 컴파일러들이 함수 앞에 _문자 붙이기 때문

_main :
	mov rax, 0x2000004 ;write()함수 번호
	mov rdi, 1 ;write의 매개변수 3개 가져오기
	mov rsi, msg
	mov rdx, 12
	syscall ;write(1, msg, 12);

	mov rax, 0x2000001 ;exit()함수 번호
	mov rdi, 0
	syscall ;exit(0);
