#include "common/program-name.h"
#include "libs/stdv.h"

#include "lexer.h"
#include "ir.h"
#include "gen.h"

#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>

#define BFC_DEFAULT_MEMORY_SIZE  30000
#define BFC_DEFAULT_OUT_FILENAME "out.s"

struct Args
{
	char *inFilename;
	char *outFilename;
	uint32_t memSize;
	bool shouldOptmz;
	bool shouldGenAsm;
	bool shouldDebugLexer;
	bool shouldDebugIR;
};

static struct Args parse_cli_arguments (const uint32_t, char**);
static void display_usage (void);

static void debug_lexer (const struct LexToken*, const char*);
static void debug_ir (const struct IRToken*, const char*);

int main (int argc, char **argv)
{
	struct Args args = parse_cli_arguments(argc, argv);

	struct LexToken *tokens = lex_file(args.inFilename);
	if (stdv_size(tokens) == 0)
	{
		return 0;
	}

	if (args.shouldDebugLexer)
	{
		debug_lexer(tokens, args.inFilename);
		stdv_free(tokens);
		return 0;
	}

	struct IRToken *ir = ir_gen(tokens, args.shouldOptmz);
	stdv_free(tokens);

	if (args.shouldDebugIR)
	{
		debug_ir(ir, args.inFilename);
		stdv_free(ir);
		return 0;
	}
	if (args.shouldGenAsm)
	{
		gen_gen(ir, args.outFilename, args.memSize);
	}

	stdv_free(ir);
	return 0;
}

static struct Args parse_cli_arguments (const uint32_t argc, char **argv)
{
	struct Args args = {0};

	opterr = false;

	int32_t opt;
	while ((opt = getopt(argc, argv, "f:o:m:OhSdD")) != -1)
	{
		switch (opt)
		{
			case 'f': { args.inFilename = optarg;  break; }
			case 'o': { args.outFilename = optarg; break; }
			case 'O': { args.shouldOptmz = true; break; }
			case 'S': { args.shouldGenAsm = true; break; }
			case 'd': { args.shouldDebugLexer = true; break; }
			case 'D': { args.shouldDebugIR = true; break; }
			case 'm': { args.memSize = (uint32_t) atoi(optarg); break; }
			case 'h': default : display_usage();
		}
	}

	if (args.inFilename == 0)
	{
		display_usage();
	}
	if (args.memSize == 0)
	{
		args.memSize = BFC_DEFAULT_MEMORY_SIZE;
	}
	if (args.outFilename == NULL)
	{
		args.outFilename = BFC_DEFAULT_OUT_FILENAME;
	}

	return args;
}

static void display_usage (void)
{
	printf("%s usage:\n", PROGRAM_NAME);
	printf(" $ %s -f [filename.b] [opts]\n\n", PROGRAM_NAME);
	printf(" -f [filename] specify source file\n");
	printf(" -o [filename] specify output's filename\n");
	printf(" -O            optimize code (do not keep original source)\n");
	printf(" -S            generate assembly file instead of elf file\n");
	printf(" -d            print debug version (lexer stage)\n");
	printf(" -D            print debug version (ir stage)\n");
	printf(" -m [usize]    specify memory size (30k default)\n");

	exit(EXIT_SUCCESS);
}

static void debug_lexer (const struct LexToken *tokens, const char *filename)
{
	printf("%s:debug:%s file:\n", PROGRAM_NAME, filename);
	for (uint32_t i = 0; i < (uint32_t) stdv_size(tokens); i++)
	{
		const struct LexToken token = stdv_get(tokens, i);
		printf(
			"[T%-5d (%5d:%-5d)]: <%c:%5d>\n",
			i,
			token.numline,
			token.offset,
			*token.context,
			token.aux
		);
	}
}

static void debug_ir (const struct IRToken *ir, const char *filename)
{
	printf("%s:debug:%s file:\n", PROGRAM_NAME, filename);
	for (uint32_t i = 0; i < (uint32_t) stdv_size(ir); i++)
	{
		const struct IRToken irt = stdv_get(ir, i);
		printf(
			"[%s: %5d]\n",
			ir_action_as_str(irt.action),
			irt.aux
		);
	}
}
