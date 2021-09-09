/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/03/06 18:21:47 by amoujane          #+#    #+#             */
/*   Updated: 2020/03/08 14:46:16 by amoujane         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_asm.h"

void	ft_test_strcpy(void)
{
	char	*s1;
	char	s2[20];
	char	s3[20];
	int		fd;

	s1 = "lllllllllkkkkkkk110";
	ft_strcpy(s2, "");
	strcpy(s3, "");
	printf("\nstrcpy:\nmine: %s\nsys : %s\n\n", s2, s3);
	printf("write fun:\n");
	fd = open("test", O_RDONLY | O_WRONLY);
	ft_write(fd, s1, ft_strlen(s1));
}

void	ft_test_strlen(void)
{
	char	*s1;
	char	*s2;

	s1 = "test this";
	s2 = "test1 lll";
	printf("strlen:\n%zu\n\n", ft_strlen("hgdgd"));
	printf("strcmp:\n%d\n", ft_strcmp("", ""));
	printf("ft_strcmp:\n%d\n", ft_strcmp("ayob", "ayou"));
	printf("strcmp:\n%d\n", strcmp("ayob", "ayou"));
}

void	ft_test_read(void)
{
	char	*s1;
	int		fd;
	int		end;

	s1 = malloc(sizeof(char) * 100);
	fd = open("main.c", O_RDONLY);
	end = ft_read(fd, s1, 5);
	s1[end] = '\0';
	printf("\n\nread fun:\n%s\n", s1);
	close(fd);
	free(s1);
}

void	ft_test_strdup(void)
{
	char	*s1;

	s1 = ft_strdup("");
	printf("\nstrdup fun:\n%s\n", s1);
	free(s1);
}

int		main(void)
{
	char	*buf;
	int		x;

	buf = malloc(100);
	ft_test_strlen();
	ft_test_strcpy();
	ft_test_read();
	ft_test_strdup();
	printf("%d\n", (x = ft_read(0, buf, 15)));
	buf[x] = '\0';
	printf("%s", buf);
	return (0);
}
