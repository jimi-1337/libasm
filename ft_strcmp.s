# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:01 by amoujane          #+#    #+#              #
#    Updated: 2020/03/08 14:44:54 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_strcmp

segment			.text

_ft_strcmp:								; rdi = s1 and rsi = s2
		xor		rax, rax
		xor		rdx,rdx
		mov		rbx, 0					; count = 0
start:
		cmp		BYTE[rsi + rbx], 0
		je 		out
		cmp		BYTE[rdi + rbx], 0
		je 		out
		mov		byte dl, [rsi + rbx]
		mov		byte al, [rdi + rbx]
		cmp		al, dl
		je		incr
		jg		s_1
		jl		s_2
incr:
		inc		rbx
		jmp		start
s_1:	
		sub rax, rdx
		ret
s_2:	
		sub rax,rdx
		ret
out:
		mov		byte dl, [rsi + rbx]
		mov		byte al, [rdi + rbx]
		cmp		al, dl
		jg		s_1
		jl		s_2
		mov		rax, 0
		ret
