# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: skang <skang@student.42seoul.kr>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/24 19:57:17 by skang             #+#    #+#              #
#    Updated: 2020/11/24 19:57:18 by skang            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section.data:

section.text:
	global _ft_strlen

_ft_strlen:
	cmp rdi,0 ;str=0이면 z=1. rdi는 인덱스 레지스터
	jz _end_loop
	mov rax,0 ;count초기화

_start_loop:
	cmp byte [rdi+rax],0
	jz _end_loop
	inc rax
	jmp _start_loop
_end_loop:
	ret
