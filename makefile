CC = gcc
OBJS = bfc.o lexer.o
FLAGS = -Wall -Wextra -Wpedantic
EXEC = bfc

.PHONY: clean all

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
%.o: %.c
	$(CC) $< -c $@ $(FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC)
