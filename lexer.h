#ifndef BFC_LEXER_H
#define BFC_LEXER_H

#include "globl.h"

struct Token
{
	char *context;
	union { int32_t jmp; uint16_t times; } aux;
	uint16_t numline;
	uint16_t offset;
};

struct Token* lex_file (const char*);

#endif
