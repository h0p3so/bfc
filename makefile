CC = gcc
OBJS = bfc.o lexer.o ir.o gen.o
STD_FLAGS = -Wall -Wextra -Wpedantic
EXEC = bfc

.PHONY: clean all

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

%.o: %.c
lexer.o: lexer.c
	$(CC) lexer.c -c $(STD_FLAGS)
bfc.o: bfc.c
	$(CC) bfc.c -c $(STD_FLAGS)
ir.o: ir.c
	$(CC) ir.c -c $(STD_FLAGS)
gen.o: gen.c
	$(CC) gen.c -c $(STD_FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC)
