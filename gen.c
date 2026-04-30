#include "common/program-name.h"
#include "gen.h"
#include "libs/stdv.h"

#include <stdio.h>
#include <stdlib.h>

static inline void _gen_prelude (FILE *file, const uint16_t memsz)
{
	const char *const fmt =
		".section .rodata\n"                 \
		"\t.compiler: .string \"bfc:1.0\"\n" \
		".section .bss\n"                    \
		"\t.memory: .zero %d\n"              \
		".section .text\n"                   \
		".globl _start\n"                    \
		"_start:\n"                          \
		"\tleaq\t.memory(%rip), %r8\n";
	fprintf(file, fmt, memsz);
}

static inline void _gen_postlude (FILE *file)
{
	const char *const fmt =
		"\tmovq\t$60, %rax\n"   \
		"\txorq\t%rdi, %rdi\n" \
		"\tsyscall\n";
	fprintf(file, "%s", fmt);
}

void gen_gen (const struct IRToken *ir, const char *outFilename, const uint16_t memsz)
{
	const char *filename = (outFilename) ? outFilename : "out.s";
	FILE *file = fopen(filename, "w");

	if (!file)
	{
		fprintf(stderr, "%s:gen: cannot open file (%s) to write\n", PROGRAM_NAME, filename);
		exit(EXIT_FAILURE);
	}

	_gen_prelude(file, memsz);
	for (uint32_t i = 0; i < (uint32_t) stdv_size(ir); i++)
	{
	}

	_gen_postlude(file);
	fclose(file);
}
