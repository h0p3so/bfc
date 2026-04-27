/* Once the lexing has been performed and no error was encountered, the IR
 * generation is called.
 *
 * The idea is to break tokens down into something that could be translated
 * into assembly, for example ++++ would be turned into INC_INS(4) -> incb $4, %al
 *
 * This stage wouldn't be needed if BFC did not implement optimizations but since
 * it does, here it is
 *
 * Optimization 1: Constant cancellation
 * Merge neighboring operations of the same kind.
 * INC_INS(4), DEC_INS(3) -> INC_INS(1)
 *
 * Optimization 2: Setting zeroes
 * [+] or [-] becomes SET_ZERO_INS
 *
 * Optimization 3: Multiplication loops
 * [->+++<] is MUL_INS(src: 0, dest: 1, mult: 3) -> 3
 *
 * Optimization 4: Dead movement
 * >><< is staying (NOP_INS)
 *
 */
#ifndef BFC_IR_H
#define BFC_IR_H

#include "lexer.h"

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

struct IRToken* ir_gen (const struct Token*, const bool);

#endif
