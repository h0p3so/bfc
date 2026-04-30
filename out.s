.section .rodata
	.compiler: .string "bfc:1.0"
.section .bss
	.memory: .zero 30000
.section .text
.globl _start
_start:
	leaq	.memory(%rip), %r8
	movq	$60, %rax
	xorq	%rdi, %rdi
	syscall
