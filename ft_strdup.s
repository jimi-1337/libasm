# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:22 by amoujane          #+#    #+#              #
#    Updated: 2020/03/11 16:37:25 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global  _ft_strdup

segment .text
extern	_malloc

_ft_strdup:
			xor rax, rax
			xor rdx, rdx
			xor rbx, rbx
			mov		rbx, -1
len:		
			inc		rbx
			cmp		BYTE[rdi + rbx], 0
			jne		len
mal:
			inc		rbx
			push	rdi
			mov		rdi, rbx
			call	_malloc
			pop		rdi
			cmp		rax, 0
			je		error
			mov		rbx, 0
copy:
			mov		dh, BYTE[rdi + rbx]
			mov		BYTE[rax + rbx], dh
			cmp		dh, 0
			je		return
incr:
			inc		rbx
			jmp		copy
error:
			xor		rax, rax
			ret
return:
			xor	rbx, rbx
			ret
