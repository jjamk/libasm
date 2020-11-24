# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: skang <skang@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/24 19:57:09 by skang             #+#    #+#              #
#    Updated: 2020/11/24 19:57:10 by skang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section.data:

section.text:
	global _ft_strdup
	extern _malloc
	extern _ft_strlen
	extern _ft_strcpy

_ft_strdup:
	cmp rdi,0
	jz _null_return
	push rdi ;스택에 rdi넣기
	call _ft_strlen ;rax에 ft_strlen 리턴값넣음
	pop rdi
	inc rax ;널 자리 +1을 위해서
	push rdi 
	mov rdi, rax
	call _malloc
	pop rdi
	cmp rax,0 ;malloc error
	jz _null_return
	push rsi
	mov rsi, rdi
	mov rdi, rax
	call _ft_strcpy 
	pop rsi
	ret

_null_return:
	mov rax,0
	ret
