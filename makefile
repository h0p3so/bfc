CC = gcc
OBJS = bfc.o lexer.o ir.o gen.o
C_FLAGS = -Wall -Wextra -Wpedantic
ASM_FLAGS = -nolibc -nostdlib -nostartfiles
IR_FLAGS =
EXEC = bfc
DIR = bf

.PHONY: clean all

all: $(EXEC)

asm:
	$(CC) *.s $(ASM_FLAGS) -g
$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)
%.o: %.c
	$(CC) $< -c -o $@ $(C_FLAGS) $(IR_FLAGS)
clean:
	rm -rf $(OBJS) $(EXEC) a.out *.s
pull-bf:
	mkdir -p programs
	curl -LO https://brainfuck.org/e.b
	curl -LO https://brainfuck.org/sierpinski.b
	curl -LO https://brainfuck.org/squares.b
	curl -LO https://raw.githubusercontent.com/skeeto/bf-x86/refs/heads/master/samples/mandelbrot.bf
	curl -LO https://raw.githubusercontent.com/skeeto/bf-x86/refs/heads/master/samples/hanoi.bf
	curl -LO https://brainfuck.org/life.b
	mv *.b *.bf programs
cls-bf:
	rm -rf programs
