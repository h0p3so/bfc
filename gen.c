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
	static const char *const _fmt =
		"\tmovq\t$60, %rax\n"  \
		"\txorq\t%rdi, %rdi\n" \
		"\tsyscall\n";
	fprintf(file, "%s", _fmt);

}

static inline void _gen_add (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\taddb\t$%d, (%r8)\n";
	fprintf(file, fmt, aux);
}


static inline void _gen_sub (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\tsubb\t$%d, (%r8)\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_nxt (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\taddq\t$%d, %r8\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_prv (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\tsubq\t$%d, %r8\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_out (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\tmovq\t$1, %rax\n"  \
		"\tmovq\t$1, %rdi\n"  \
		"\tmovq\t%r8, %rsi\n" \
		"\tmovq\t$1, %rdx\n"  \
		"\tsyscall\n";
	for (int16_t i = 0; i < aux; i++)
		fprintf(file, "%s", fmt);
}

static inline void _gen_inp (FILE *file, const int16_t aux)
{
	static const char *const fmt =
		"\tmovq\t$0, %rax\n"  \
		"\tmovq\t$1, %rdi\n"  \
		"\tmovq\t%r8, %rsi\n" \
		"\tmovq\t$1, %rdx\n"  \
		"\tsyscall\n";
	for (int16_t i = 0; i < aux; i++)
		fprintf(file, "%s", fmt);
}

static inline void _gen_lef (FILE *file, const int16_t auxL, const int16_t auxR)
{
	static const char *const fmt =
		".B%d:\n"             \
		"\tcmpb\t$0, (%r8)\n" \
		"\tjbe\t.E%d\n";
	fprintf(file, fmt, auxL, auxR);
}

static inline void _gen_rig (FILE *file, const int16_t auxL, const int16_t auxR)
{
	static const char *const fmt =
		"\tjmp\t.B%d\n" \
		".E%d:\n";
	fprintf(file, fmt, auxR, auxL);
}

static inline void _gen_mov (FILE *file, const int16_t aux)
{
	static const char *const fmt = "\tmovb\t$%d, (%r8)\n";
	fprintf(file, fmt, aux);
}

static inline void _gen_mul (FILE *file)
{
	static const char *const fmt =
		"\txorq\t%r9, %r9\n"   \
		"\tmovb\t(%r8), %r9b\n";
	fprintf(file, "%s", fmt);
}

static inline void _gen_mul_add (FILE *file, const int16_t aux)
{
	static const char *const fmt1 =
		"\tmovb\t$%d, %%al\n" \
		"\timulb\t%r9b\n"    \
		"\taddb\t%%al, (%r8)\n";
	fprintf(file, fmt1, aux);
}

static inline void _gen_mul_sub (FILE *file, const int16_t aux)
{
	static const char *const fmt1 =
		"\tmovb\t$%d, %%al\n" \
		"\timulb\t%r9b\n"    \
		"\tsubb\t%%al, (%r8)\n";
	fprintf(file, fmt1, aux);
}

void gen_gen (const struct IRToken *ir, const char *outFilename, const uint16_t memsz)
{
	FILE *file = fopen(outFilename, "w");

	if (!file)
	{
		fprintf(stderr, "%s:gen: cannot open file (%s) to write\n", PROGRAM_NAME, outFilename);
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
			case INS_INP: { _gen_inp(file, t.aux); break; }

			case INS_LEF: { _gen_lef(file, t.aux, stdv_get(ir, t.aux).aux); break; }
			case INS_RIG: { _gen_rig(file, t.aux, stdv_get(ir, t.aux).aux); break; }

			case INS_ZER: { _gen_mov(file, 0); break; }
			case INS_MOV: { _gen_mov(file, t.aux); break; }

			case INS_MUL: { _gen_mul(file); break; }
			case INS_MUL_ADD: { _gen_mul_add(file, t.aux); break; }
			case INS_MUL_SUB: { _gen_mul_sub(file, t.aux); break; }

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
