section.data:

section.text:
	global _ft_strcmp

_ft_strcmp:
	cmp rdi,0 ;dest data 주소
	jz _null_return
	cmp rsi,0 ;src data 주소
	jz _null_return
	mov rcx,0 ;반복문의 카운터로 사용(i)
	jmp _start_loop

_start_loop:
	mov bl, byte[rdi + rcx] ;dl=s1[i]
	cmp bl, byte[rsi + rcx]
	ja _big ;s1>s2(ZF=0and CF=0)
	jb _small ;s1<s2
	jz _equal ;s1==s2

_big:
	mov rax, 1
	ret

_small:
	mov rax, -1
	ret

_equal:
	cmp bl, 0 ;s1이 끝날 경우
	jz _null_return
	inc rcx
	jmp _start_loop

_null_return:
	mov rax,0 ;함수의 리턴값 저장
	ret
