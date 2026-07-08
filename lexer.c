#include "lexer.h"

#include <stdio.h>
#include <stdlib.h>

struct Lexd
{
	char   *source;
	size_t length;
};

static size_t read_file (char**, const char*);

void lex_file (const char *filename)
{
	struct Lexd lexd = {0};
	lexd.length = read_file(&lexd.source, filename);
}

static size_t read_file (char **source, const char *filename)
{
	FILE *file = fopen(filename, "r");
	if (file == NULL)
	{
		fprintf(stderr, "bfc:lexer: cannot read `%s` file\n", filename);
		exit(EXIT_FAILURE);
	}

	fseek(file, 0, SEEK_END);
	const size_t size = ftell(file);
	fseek(file, 0, SEEK_SET);

	*source = (char*) calloc(size + 1, sizeof(**source));
	if (*source == NULL)
	{
		fprintf(stderr, "bfc:lexer: cannot continue due to internal errors\n");
		exit(EXIT_FAILURE);
	}

	const size_t read = fread(*source, sizeof(**source), size, file);
	if (read != size)
	{
		fprintf(stderr, "bfc:lexer: cannot continue (only %ld out of %ld bytes were read)\n", read, size);
		exit(EXIT_FAILURE);
	}

	return size;
}
