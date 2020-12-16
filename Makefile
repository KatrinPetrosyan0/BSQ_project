SRCS	= ${wildcard ./srcs/*.c}
OBJS	= ${SRCS:.c=.o}
INCL	= include
CC		= cc
CFLAGS	= -Wall -Wextra -Werror
NAME	= bsq

.c.o :	
			${CC} -I ${INCL} ${CFLAGS} -c $< -o ${<:.c=.o}

all :		${OBJS}
			${CC} -o ${NAME} ${OBJS}

${NAME} :	all

clean :
			rm -f ${OBJS}

fclean :	clean
			rm -f ${NAME}

re :		fclean all
	
.PHONY :	all ${NAME} clean fclean re
