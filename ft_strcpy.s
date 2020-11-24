# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: skang <skang@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/24 19:57:03 by skang             #+#    #+#              #
#    Updated: 2020/11/24 19:57:05 by skang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
