CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS = ft_flag_set.c 			\
	   ft_itoa.c	 			\
	   ft_printf_memory_utils.c	\
	   ft_printf_type.c			\
	   ft_printf_type2.c		\
	   ft_printf_utils.c		\
	   ft_printf_utils2.c		\
	   ft_printf.c				\
	   ft_type_check.c			\
	   ft_write.c				

NAME = libftprintf.a
OBJS = $(SRCS:.c=.o)
RM = rm -rf


all : $(NAME)

$(NAME) : $(OBJS)
	ar crs $(NAME) $^

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME) 

re :
	make fclean
	make all

bonus : $(NAME)

.PHONY: all clean fclean re
