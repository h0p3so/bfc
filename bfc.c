#include "common/program-name.h"
#include "libs/stdv.h"

#include "lexer.h"
#include "ir.h"

#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>

struct Args
{
	char *in_filename;
	char *out_filename;
	bool should_optimize;
	bool generate_source;
	bool debug;
};

static struct Args parse_cli_arguments (const uint32_t, char**);
static void display_usage (void);

static void debug (const struct LexToken*, const char*);

int main (int argc, char **argv)
{
	struct Args args = parse_cli_arguments(argc, argv);

	struct LexToken *tokens = lex_file(args.in_filename);
	if (args.debug)
	{
		debug(tokens, args.in_filename);
		stdv_free(tokens);
		return 0;
	}

	struct IRToken *ir = ir_gen(tokens, args.should_optimize);
	stdv_free(tokens);

	if (args.generate_source)
	{
	}

	stdv_free(ir);
	return 0;
}

static struct Args parse_cli_arguments (const uint32_t argc, char **argv)
{
	struct Args args = {0};

	opterr = false;

	int32_t opt;
	while ((opt = getopt(argc, argv, "f:o:OhSD")) != -1)
	{
		switch (opt)
		{
			case 'f': { args.in_filename = optarg;  break; }
			case 'o': { args.out_filename = optarg; break; }
			case 'O': { args.should_optimize = true; break; }
			case 'S': { args.generate_source = true; break; }
			case 'D': { args.debug = true; break; }
			case 'h': default : display_usage();
		}
	}

	if (args.in_filename == 0)
	{
		display_usage();
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

	exit(EXIT_SUCCESS);
}

static void debug (const struct LexToken *tokens, const char *filename)
{
	printf("bfc:debug-version:%s file:\n", filename);
	for (uint32_t i = 0; i < (uint32_t) stdv_size(tokens); i++)
	{
		const struct LexToken token = stdv_get(tokens, i);
		printf("T%5d: %5d:%-5d: %c <%5d>\n", i, token.numline, token.offset, *token.context, token.aux);
	}
}
