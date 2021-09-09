# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:20:52 by amoujane          #+#    #+#              #
#    Updated: 2020/03/08 14:42:31 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global			_ft_read

segment			.text

_ft_read:
		xor rax, rax
		mov		rax, 0x02000003
		syscall
		jc exit
		ret
exit:
	mov rax, -1
	ret