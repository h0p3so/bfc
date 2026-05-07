.section .rodata
	.compiler: .string "bfc:1.0"
.section .bss
	.memory: .zero 30000
.section .text
.globl _start
_start:
	leaq	.memory(%rip), %r8
.L0:
	cmpb	$0, (%r8)
	je	.R0
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
.L8:
	cmpb	$0, (%r8)
	je	.R8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
.R8:
	cmpb	$0, (%r8)
	jne	.L8
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addb	$1, (%r8)
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subb	$1, (%r8)
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subq	$1, %r8
	addq	$1, %r8
	movq	$0, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
.L240:
	cmpb	$0, (%r8)
	je	.R240
.R240:
	cmpb	$0, (%r8)
	jne	.L240
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
.R0:
	cmpb	$0, (%r8)
	jne	.L0
	addb	$8, (%r8)
.L960:
	cmpb	$0, (%r8)
	je	.R960
	addq	$1, %r8
	addb	$4, (%r8)
.L782:
	cmpb	$0, (%r8)
	je	.R782
	addq	$1, %r8
	addb	$2, (%r8)
	addq	$1, %r8
	addb	$3, (%r8)
	addq	$1, %r8
	addb	$3, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	subq	$4, %r8
	subb	$1, (%r8)
.R782:
	cmpb	$0, (%r8)
	jne	.L782
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	addb	$1, (%r8)
	addq	$1, %r8
	subb	$1, (%r8)
	addq	$2, %r8
	addb	$1, (%r8)
.L1935:
	cmpb	$0, (%r8)
	je	.R1935
	subq	$1, %r8
.R1935:
	cmpb	$0, (%r8)
	jne	.L1935
	subq	$1, %r8
	subb	$1, (%r8)
.R960:
	cmpb	$0, (%r8)
	jne	.L960
	addq	$2, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$1, %r8
	subb	$3, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addb	$7, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addb	$3, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$2, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subq	$1, %r8
	subb	$1, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subq	$1, %r8
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addb	$3, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subb	$6, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	subb	$8, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$2, %r8
	addb	$1, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	addq	$1, %r8
	addb	$2, (%r8)
	movq	$1, %rax
	movq	$1, %rdi
	movq	%r8, %rsi
	movq	$1, %rdx
	syscall
	movq	$60, %rax
	xorq	%rdi, %rdi
	syscall
