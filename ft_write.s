# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:35 by amoujane          #+#    #+#              #
#    Updated: 2020/03/08 14:42:29 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global      _ft_write

segment     .text

_ft_write:
			xor rax, rax
			mov rax, 0x02000004
			syscall
			jc exit
			ret
exit:
	mov rax, -1
	ret