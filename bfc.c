#include "common/program-name.h"
#include "libs/stdv.h"

#include "lexer.h"
#include "ir.h"
#include "gen.h"

#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>

struct Args
{
	char *inFilename;
	char *outFilename;
	uint16_t memSize;
	bool shouldOptmz;
	bool shouldGenAsm;
	bool shouldDebug;
};

static struct Args parse_cli_arguments (const uint32_t, char**);
static void display_usage (void);

static void debug (const struct LexToken*, const char*);

int main (int argc, char **argv)
{
	struct Args args = parse_cli_arguments(argc, argv);

	struct LexToken *tokens = lex_file(args.inFilename);
	if (args.shouldDebug)
	{
		debug(tokens, args.inFilename);
		stdv_free(tokens);
		return 0;
	}

	struct IRToken *ir = ir_gen(tokens, args.shouldOptmz);
	stdv_free(tokens);

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
	while ((opt = getopt(argc, argv, "f:o:OhSDm:")) != -1)
	{
		switch (opt)
		{
			case 'f': { args.inFilename = optarg;  break; }
			case 'o': { args.outFilename = optarg; break; }
			case 'O': { args.shouldOptmz = true; break; }
			case 'S': { args.shouldGenAsm = true; break; }
			case 'D': { args.shouldDebug = true; break; }
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
		args.memSize = 30'000;
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
	printf(" -D            print debug version\n");
	printf(" -m [usize]    specify memory size (30k default)\n");

	exit(EXIT_SUCCESS);
}

static void debug (const struct LexToken *tokens, const char *filename)
{
	printf("%s:debug-version:%s file:\n", PROGRAM_NAME, filename);
	for (uint32_t i = 0; i < (uint32_t) stdv_size(tokens); i++)
	{
		const struct LexToken token = stdv_get(tokens, i);
		printf("T%5d: %5d:%-5d: %c <%5d>\n", i, token.numline, token.offset, *token.context, token.aux);
	}
}
