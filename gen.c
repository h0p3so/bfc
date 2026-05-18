#include "common/program-name.h"
#include "gen.h"
#include "libs/stdv.h"

#include <stdio.h>
#include <stdlib.h>

static inline void _gen_prelude (FILE *file, const uint16_t memsz)
{
	static const char *const fmt =
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
	static const char *const fmt =
		"\tmovq\t$60, %rax\n"  \
		"\txorq\t%rdi, %rdi\n" \
		"\tsyscall\n";
	fprintf(file, "%s", fmt);
}

static inline void _gen_add (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\taddb\t$%d, (%r8)\n";
	fprintf(file, fmt, aux);
}


static inline void _gen_sub (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\tsubb\t$%d, (%r8)\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_nxt (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\taddq\t$%d, %r8\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_prv (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\tsubq\t$%d, %r8\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_out (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\tmovq\t$1, %rax\n"  \
		"\tmovq\t$1, %rdi\n"  \
		"\tmovq\t%r8, %rsi\n" \
		"\tmovq\t$1, %rdx\n"  \
		"\tsyscall\n";
	for (uint16_t i = 0; i < aux; i++)
		fprintf(file, "%s", fmt);
}

static inline void _gen_inp (FILE *file, const uint16_t aux)
{
	static const char *const fmt =
		"\tmovq\t$0, %rax\n"  \
		"\tmovq\t$1, %rdi\n"  \
		"\tmovq\t%r8, %rsi\n" \
		"\tmovq\t$1, %rdx\n"  \
		"\tsyscall\n";
	for (uint16_t i = 0; i < aux; i++)
		fprintf(file, "%s", fmt);
}

static inline void _gen_lef (FILE *file, const uint16_t auxL, const uint16_t auxR)
{
	static const char *const fmt =
		".L%d:\n"             \
		"\tcmpb\t$0, (%r8)\n" \
		"\tje\t.R%d\n";
	fprintf(file, fmt, auxL, auxR);
}

static inline void _gen_rig (FILE *file, const uint16_t auxL, const uint16_t auxR)
{
	static const char *const fmt =
		".R%d:\n"             \
		"\tcmpb\t$0, (%r8)\n" \
		"\tjne\t.L%d\n";
	fprintf(file, fmt, auxL, auxR);
}

/*L2
R0*/

/*L2:
        cmpb    $0, (%r8)
        je      R0
        [code]
R0:
        cmpb    $0, (%r8)
        jne     L2*/

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
		const struct IRToken t = stdv_get(ir, i);
		switch (t.action)
		{
			case INS_NOP: { continue; }

			case INS_ADD: { _gen_add(file, t.aux); break; }
			case INS_SUB: { _gen_sub(file, t.aux); break; }
			case INS_NXT: { _gen_nxt(file, t.aux); break; }
			case INS_PRV: { _gen_prv(file, t.aux); break; }
			case INS_OUT: { _gen_out(file, t.aux); break; }
			case INT_INP: { _gen_inp(file, t.aux); break; }

			case INS_LEF: { _gen_lef(file, t.aux, stdv_get(ir, t.aux).aux); break; }
			case INS_RIG: { _gen_rig(file, t.aux, stdv_get(ir, t.aux).aux); break; }

			case INS_ZER:
			case INS_SET:
			default:
			{
				fprintf(stderr, "%s:gen: unreachable\n", PROGRAM_NAME);
				fprintf(stderr, "please create an issue at https://github.com/h0p3so/bfc with the full context of the program\n");
				exit(EXIT_FAILURE);
			}
		}
	}
	_gen_postlude(file);
	fclose(file);
}
