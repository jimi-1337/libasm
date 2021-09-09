# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: amoujane <amoujane@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/06 18:21:54 by amoujane          #+#    #+#              #
#    Updated: 2020/03/06 18:21:56 by amoujane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

RED = \033[0;31m
NC = \033[0m
BLUE = \033[0;34m
GREAN = \033[0;32m
YELLOW = \033[0;33m


SRC = ft_strcmp.s \
		ft_write.s \
		ft_strlen.s \
		ft_read.s \
		ft_strdup.s \
		ft_strcpy.s


NAME =  libasm.a

OBJ = $(SRC:.s=.o)

FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "$(GREAN)libasm.a been created$(NC)"

%.o: %.s
	@nasm -f macho64 $<
	@echo "$(BLUE)Compiled "$<" successfully!$(NC)"

main:
	gcc $(FLAGS) main.c $(NAME)

clean:
	@rm -f $(OBJ)
	@echo "${RED}Object files been removed${NC}"

fclean: clean
	@rm -f $(NAME)
	@echo "${RED}$(NAME) been removed${NC}"
re: fclean all
