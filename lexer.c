#include "common/program-name.h"
#include "common/bf-types.h"
#include "libs/stdv.h"

#include "lexer.h"

#include <stdio.h>
#include <stdlib.h>

#define LEXER_UNPAIRED  -1

enum Error
{
	ERROR_UNOPENED_BRACE = 0,
	ERROR_UNCLOSED_BRACE,
};

struct Lexd
{
	char   *source;
	uint32_t length;
	uint16_t numline;
	uint16_t offset;
};

static inline struct LexToken gen_token (struct Lexd *lexd, const uint32_t off)
{
	struct LexToken token =
	{
		.context = lexd->source + off,
		.numline = lexd->numline,
		.offset = lexd->offset,
		.aux = 1
	};
	return token;
}

static uint32_t read_file (char**, const char*);
static void look_for_unclosed (const uint32_t*, const struct LexToken*);

static void print_error (const enum Error, const char*, const uint16_t, const uint16_t, const bool);

struct LexToken* lex_file (const char *filename)
{
	struct Lexd lexd = {
		.numline = 1,
		.offset = 0
	};
	lexd.length = read_file(&lexd.source, filename);

	struct LexToken *tokens = stdv_create(sizeof(struct LexToken), STDV_STD_INIT_CAP);
	uint32_t *indexstack = stdv_create(sizeof(uint32_t)    , STDV_STD_INIT_CAP);

	char lastype = '\0';

	for (uint32_t i = 0; i < lexd.length; i++)
	{
		const char type = lexd.source[i];
		if (type == lastype)
		{
			stdv_back(tokens).aux++;
			lexd.offset++;
			continue;
		}

		switch (lexd.source[i])
		{
			case BF_TYPE_ADD:
			case BF_TYPE_SUB:
			case BF_TYPE_OUT:
			case BF_TYPE_INP:
			case BF_TYPE_NXT:
			case BF_TYPE_PRV:
			{
				stdv_put(tokens, gen_token(&lexd, i));
				lastype = *(stdv_back(tokens).context);
				break;
			}
			case BF_TYPE_LEF:
			{
				stdv_put(tokens, gen_token(&lexd, i));
				stdv_back(tokens).aux = LEXER_UNPAIRED;
				stdv_put(indexstack, stdv_size(tokens) - 1);

				lastype = '\0';
				break;
			}
			case BF_TYPE_RIG:
			{
				if (stdv_size(indexstack) == 0)
				{
					print_error(ERROR_UNOPENED_BRACE, lexd.source + i, lexd.numline, lexd.offset, true);
				}

				struct LexToken token = gen_token(&lexd, i);
				uint32_t jmp = stdv_pop(indexstack);
				token.aux = jmp;

				stdv_put(tokens, token);
				stdv_get(tokens, jmp).aux = stdv_size(tokens) - 1;
				lastype = '\0';
				break;
			}
			case '\n':
			{ lexd.numline++; lexd.offset = 0; continue; }
		}

		lexd.offset++;
	}

	look_for_unclosed(indexstack, tokens);
	stdv_free(indexstack);
	return tokens;
}

static uint32_t read_file (char **source, const char *filename)
{
	FILE *file = fopen(filename, "r");
	if (file == NULL)
	{
		fprintf(stderr, "%s:lexer: cannot read `%s` file\n", PROGRAM_NAME, filename);
		exit(EXIT_FAILURE);
	}

	fseek(file, 0, SEEK_END);
	const uint32_t size = (uint32_t) ftell(file);
	fseek(file, 0, SEEK_SET);

	*source = (char*) calloc(size + 1, sizeof(**source));
	if (*source == NULL)
	{
		fprintf(stderr, "%s:lexer: cannot continue due to internal errors\n", PROGRAM_NAME);
		exit(EXIT_FAILURE);
	}

	const uint32_t read = fread(*source, sizeof(**source), size, file);
	if (read != size)
	{
		fprintf(stderr, "%s:lexer: cannot continue (only %d out of %d bytes were read)\n", PROGRAM_NAME, read, size);
		exit(EXIT_FAILURE);
	}

	fclose(file);
	return size;
}

static void look_for_unclosed (const uint32_t *stack, const struct LexToken *tokens)
{
	const uint32_t on_error = stdv_size(stack);
	if (on_error == 0)
	{
		return;
	}

	for (uint32_t i = 0; i < on_error; i++)
	{
		struct LexToken t = stdv_get(tokens, stdv_get(stack, i));
		print_error(ERROR_UNCLOSED_BRACE, t.context, t.numline, t.offset, ((i + 1) == on_error));
	}
}

static void print_error (const enum Error error, const char *context, const uint16_t numline, const uint16_t offset, const bool _exit)
{
		static const char *const errors[] =
	{
		"(unopened brace)",
		"(unclosed brace)",
	};

	fprintf(stderr, "bfc:error: cannot continue due to %s condition\n", errors[error]);
	fprintf(stderr, "%5d:%-5d: ", numline, offset);

	const char type = *context;
	uint32_t n = 0;

	for (; context[n] == type; n++)
		;;

	fprintf(stderr, "\x1b[5m%.*s\x1b[25m\n\n", n, context);
	if (_exit)
	{
		exit(EXIT_FAILURE);
	}
}
