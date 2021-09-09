# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:29 by amoujane          #+#    #+#              #
#    Updated: 2020/03/08 14:44:32 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global      _ft_strlen

segment     .text

_ft_strlen: 							; ft_strlen(char *str) rdi = str
			xor rax, rax
			mov	rax, 0					; i = 0
incr    :
			cmp BYTE[rdi + rax], 0		; str[i] == '\0'
			je  out						; true -> go to out
			inc rax						; else -> i++
			jmp incr					; repeat the loop
out		:
			ret							; return the value of i
