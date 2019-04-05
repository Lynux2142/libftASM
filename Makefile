SYS_OS		= $(shell uname -s)
NAME		= a.out
SRCS		= $(addsuffix .c, main)
OBJS		= $(SRCS:.c=.o)
LIBASM_DIR	= libasm
LIBASM		= $(LIBASM_DIR)/libasm.a
TEST		= -Werror
CFLAGS		= -Wall -Wextra $(TEST) -g
CC			= gcc

.PHONY: all libasm fclean clean re

all: $(NAME)

libasm:
	@$(MAKE) -sC $(LIBASM_DIR)

$(NAME): libasm $(OBJS)
	@$(CC) $(CFLAGS) -no-pie -D LINUX $(OBJS) $(LIBASM)

%.o: %.c
	@$(CC) $(CFLAGS) -I $(LIBASM_DIR) -c $^ -o $@

fclean: clean
	@$(MAKE) -sC $(LIBASM_DIR) fclean
	@/bin/rm -f $(NAME)

clean:
	@$(MAKE) -sC $(LIBASM_DIR) clean
	@/bin/rm -f $(OBJS)

re: fclean all
