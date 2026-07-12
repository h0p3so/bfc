CC = gcc
OBJS = bfc.o lexer.o ir.o gen.o
C_FLAGS = -Wall -Wextra -Wpedantic
ASM_FLAGS = -nolibc -nostdlib -nostartfiles
EXEC = bfc

.PHONY: clean all

all: $(EXEC)

asm:
	$(CC) *.s $(ASM_FLAGS) -g
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
%.o: %.c
	$(CC) $< -c -o $@ $(C_FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC) a.out *.s
