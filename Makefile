CC = gcc
NAME = libasm.a
SRCS = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_write.s ft_read.s

OBJS = ${SRCS:.s=.o}

CFLAGS = gcc -Wall -Wextra -Werror
LFLAGS = -L. -lasm

.s.o:
	nasm -f macho64 $< -o ${<:.s=.o}

$(NAME) : $(OBJS)
	ar rc ${NAME} ${OBJS}
	${CFLAGS} main.c ${LFLAGS}
	
all : $(NAME)

clean :
	@/bin/rm -f $(OBJS) a.out

fclean : clean
	@/bin/rm -f $(NAME)

re : fclean all
