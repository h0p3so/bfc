#ifndef BFC_IR_TYPES_H
#define BFC_IR_TYPES_H

#include "bf-types.h"
#include <stdint.h>

enum IRAction {
	INS_NOP = 0,

	INS_ADD = BF_TYPE_ADD,
	INS_SUB = BF_TYPE_SUB,
	INS_NXT = BF_TYPE_NXT,
	INS_PRV = BF_TYPE_PRV,
	INS_OUT = BF_TYPE_OUT,
	INS_INP = BF_TYPE_INP,
	INS_LEF = BF_TYPE_LEF,
	INS_RIG = BF_TYPE_RIG,

	INS_ZER,
	INS_MOV,
};

struct IRToken {
	enum IRAction action;
	int16_t aux;
};

#endif
