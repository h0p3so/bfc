#ifndef BFC_IR_TYPES_H
#define BFC_IR_TYPES_H

enum IRAction {
	INS_NOP = 0,

	INS_INC = '+',
	INS_DEC = '-',
	INS_NXT = '>',
	INS_PRE = '<',
	INS_OUT = '.',
	INT_INP = ',',
	INS_BEG = '[',
	INS_END = ']',

	INS_ZER,
	INS_SET,
};

struct IRToken {
	enum IRAction action;
	uint16_t lex_aux;
	uint16_t optmzd;
};

#endif
