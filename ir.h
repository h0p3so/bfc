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

#include "common/lex-token.h"
#include "common/ir-types.h"
#include <stdbool.h>

struct IRToken* ir_gen (const struct LexToken*, const bool);
const char *ir_action_as_str (const enum IRAction);

#endif
