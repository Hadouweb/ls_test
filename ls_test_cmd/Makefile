CC = gcc -Werror -Wextra -Wall -g

SRCPATH = ./

LIBFTPATH = ../libft

HEADER = -I $(LIBFTPATH)/includes

LIB = -L$(LIBFTPATH) -lft
LIBNAME = $(LIBFTPATH)/libft.a

SRC = 	$(SRCPATH)/main.c

OBJ = $(SRC:.c=.o)

NAME = ls_test_cmd

all: $(NAME)

$(NAME): $(LIBNAME) $(OBJ)
	@$(CC) -o $@ $(LIB) $^
	@echo "\n\033[39mCompilation done.\033[0m"

$(LIBNAME):
	make -C $(LIBFTPATH)

%.o: %.c
	@$(CC) -o $@ -c $< $(HEADER)
	@echo "\033[34m█\033[0m\c"

clean: 
	@make -C $(LIBFTPATH) clean
	@rm -rf $(OBJ)

fclean: clean
	@make -C $(LIBFTPATH) fclean
	@rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re