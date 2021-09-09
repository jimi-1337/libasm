# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:11 by amoujane          #+#    #+#              #
#    Updated: 2020/03/08 14:43:20 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global		_ft_strcpy

segment		.text

_ft_strcpy:								; rdi = dst and rsi = src
			xor rax, rax
			xor rbx, rbx
			xor rdx, rdx

			mov		rbx, -1
copy:
			inc		rbx
			mov		dh, BYTE[rsi + rbx]
			mov		BYTE[rdi + rbx], dh
			cmp		dh, 0
			je		return
			jmp		copy

error:
		mov		rdi, rsi
		mov		rax, rdi
		ret
return:
		mov		rax, rdi
		ret
