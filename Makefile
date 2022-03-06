##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## .
##

CC = ld

ASMSRC = strlen.asm \
	strncmp.asm \
	strcmp.asm \
	strrchr.asm \
	strchr.asm \
	memset.asm \
	memcpy.asm \
	strstr.asm \
	strpbrk.asm \
	strcspn.asm

NAME = libasm.so

OBJ = $(ASMSRC:.asm=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -nostdlib -fPIC -shared -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: clean all

%.o: %.asm
	nasm -f elf64 -o $@ $<

.PHONY: all fclean re clean
