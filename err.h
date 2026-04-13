#ifndef BFC_ERR_H
#define BFC_ERR_H

#include "globl.h"

enum Error
{
	ERROR_UNOPENED_BRACE = 0,
	ERROR_UNCLOSED_BRACE,
};

void err_print (const enum Error, const char*, const uint16_t, const uint16_t);

#endif
