CC = gcc
OBJS = bfc.o lexer.o err.o
STD_FLAGS = -Wall -Wextra -Wpedantic
EXEC = bfc

.PHONY: clean all

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
lexer.o: lexer.c
	$(CC) lexer.c -c $(STD_FLAGS) -Wno-unused-function
bfc.o: bfc.c
	$(CC) bfc.c -c $(STD_FLAGS) -Wno-unused-function
err.o: err.c
	$(CC) err.c -c $(STD_FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC)
