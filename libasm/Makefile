SYS_OS		= $(shell uname -s)
NAME		= libasm.a
SRCS		= $(addsuffix .s, ft_abs ft_fibo ft_bzero ft_strcat ft_isalpha ft_isdigit ft_isalnum ft_isascii ft_isprint ft_toupper ft_tolower ft_puts ft_strlen ft_memset ft_memcpy ft_strdup hello test)
OBJS		= $(SRCS:.s=.o)
CFLAGS		= -g -f
LFLAGS		= ar rc
CC		= nasm

ifeq ($(SYS_OS), Linux)
	CFLAGS += elf64
	PREFIX = -dLINUX=1
else
	CFLAGS += macho64
	PREFIX = --prefix _ -dOSX=1
endif

all: $(NAME)

$(NAME): $(OBJS)
	@$(LFLAGS) $(NAME) $(OBJS)

%.o: %.s
	@$(CC) $(CFLAGS) $(PREFIX) $^ -o $@

fclean: clean
	@/bin/rm -f $(NAME)

clean:
	@/bin/rm -f $(OBJS)

re: fclean all
