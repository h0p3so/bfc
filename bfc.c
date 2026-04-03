#include <stdio.h>
#include <getopt.h>
#include <stdlib.h>

#include "lexer.h"

struct Args
{
	char     *in_filename;
	char     *out_filename;
	bool     should_optimize;
	bool     generate_source;
};

static struct Args parse_cli_arguments (const uint32_t, char**);
static void display_usage ();

int main (int argc, char **argv)
{
	struct Args args = parse_cli_arguments(argc, argv);

	lex_file(args.in_filename);
	return 0;
}

static struct Args parse_cli_arguments (const uint32_t argc, char **argv)
{
	struct Args args = {0};

	opterr = false;

	int32_t opt;
	while ((opt = getopt(argc, argv, "f:o:OhS")) != -1)
	{
		switch (opt)
		{
			case 'f': { args.in_filename = optarg;  break; }
			case 'o': { args.out_filename = optarg; break; }
			case 'O': { args.should_optimize = true; break; }
			case 'S': { args.generate_source = true; break; }
			case 'h': default : display_usage();
		}
	}

	if (args.in_filename == 0)
	{
		display_usage();
	}

	return args;
}

static void display_usage ()
{
	printf("%s usage:\n", PROGRAM_NAME);
	printf(" $ %s -f [filename.b] [opts]\n\n", PROGRAM_NAME);
	printf(" -f [filename] specify source file\n");
	printf(" -o [filename] specify output's filename\n");
	printf(" -O            optimize code (do not keep original source)\n");
	printf(" -S            generate assembly file instead of elf file\n");

	exit(EXIT_SUCCESS);
}
