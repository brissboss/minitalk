SERV	=	server.c

CLIENT	=	client.c

GCC		=	gcc

RM		=	rm -rf

FLAGS	=	-Wall -Wextra -Werror

NAME	=	server

NAME_C	=	client

$(NAME):
			@$(MAKE) -C ./lib42
			@$(GCC) $(FLAGS) $(SERV) -o $(NAME) lib42/libft.a
			@$(GCC) $(FLAGS) $(CLIENT) -o $(NAME_C) lib42/libft.a
			@echo "\033[1;32mCompilation complete ✅"

all:		$(NAME)

clean:
			@$(RM) $(NAME) $(NAME_C)
			@$(MAKE) clean -C ./lib42
			@echo "\033[1;32mCleaning complete 🧽\033[0;37m"

fclean:		clean
			@$(MAKE) fclean -C ./lib42
			@echo "\033[1;32mFull cleaning complete 🧹\033[0;37m"

re:			fclean all
			@$(MAKE) re -C ./lib42
			@echo "\033[1;32mRebuild complete 🔨\033[0;37m"

.PHONY:		all fclean clean re
