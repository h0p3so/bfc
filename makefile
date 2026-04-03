CC = gcc
OBJS = bfc.o lexer.o
STD_FLAGS = -Wall -Wextra -Wpedantic
EXEC = bfc

.PHONY: clean all

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
lexer.o: lexer.c
	$(CC) lexer.c -c lexer.o $(STD_FLAGS) -Wno-unused-function
bfc.o: bfc.c
	$(CC) bfc.c -c bfc.o $(STD_FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC)
