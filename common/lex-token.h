#ifndef BFC_LEX_TOKEN_H
#define BFC_LEX_TOKEN_H

#include <stdint.h>

struct LexToken
{
	char *context;
	uint16_t aux;
	uint16_t numline;
	uint16_t offset;
};

#endif
