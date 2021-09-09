/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_asm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/06 18:20:40 by amoujane          #+#    #+#             */
/*   Updated: 2020/03/08 14:14:15 by amoujane         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef _FT_ASM_H
# define _FT_ASM_H
# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <fcntl.h>
# include <unistd.h>

size_t			ft_strlen(const char *str);
int				ft_strcmp(const char *s1, const char *s2);
ssize_t			ft_write(int fildes, const void *buf, size_t nbyte);
ssize_t			ft_read(int fildes, void *buf, size_t nbyte);
char			*ft_strdup(const char *s1);
char			*ft_strcpy(char *dst, const char *src);
#endif
