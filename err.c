#include "err.h"

#include <stdio.h>
#include <stdlib.h>

void err_print (const enum Error error, const char *context, const uint16_t numline, const uint16_t offset)
{
	static const char *const errors[] =
	{
		"(unopened brace)",
		"(unclosed brace)",
	};

	fprintf(stderr, "\x1b[2J\x1b[Hbfc:error: cannot continue due to %s condition\n", errors[error]);
	fprintf(stderr, "%5d:%-5d: ", numline, offset);

	const char type = *context;
	uint32_t n = 0;

	for (; context[n] == type; n++)
		;;

	fprintf(stderr, "\x1b[5m%.*s\x1b[25m\n", n, context);
	exit(EXIT_FAILURE);
}
