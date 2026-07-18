#include "libs/stdv.h"

#include "ir.h"
#include "common/program-name.h"

#define IR_NO_FIXED_OPTMZ 3

#include <stdio.h> // XXX

#define IR_NO_AUX 0

static struct IRToken* simple_pass (struct IRToken*, const struct LexToken*);
static struct IRToken* optimize (struct IRToken*);

static void pattern_recognition (struct IRToken*, const uint32_t, const uint32_t);
static void apply_further_optimization (struct IRToken*, const uint32_t, const uint32_t);

struct IRToken* ir_gen (const struct LexToken *tokens, const bool shouldOptimize)
{
	struct IRToken *ir = stdv_create(sizeof(struct IRToken), STDV_STD_INIT_CAP);
	ir = simple_pass(ir, tokens);

	if (shouldOptimize == false)
	{
		return ir;
	}
	return optimize(ir);
}

const char *ir_action_as_str (const enum IRAction action)
{
	switch (action)
	{
		case INS_NOP: return "NOP";
		case INS_ADD: return "ADD"; 
		case INS_SUB: return "SUB";
		case INS_NXT: return "NXT";
		case INS_PRV: return "PRV";
		case INS_OUT: return "OUT";
		case INS_INP: return "INP";
		case INS_LEF: return "LEF";
		case INS_RIG: return "RIG";
		case INS_ZER: return "ZER";
		case INS_MOV: return "MOV";
		case INS_MUL: return "MUL";
		case INS_MUL_ADD: return "MUL_ADD";
		case INS_MUL_SUB: return "MUL_SUB";
	}

	return NULL;
}

static struct IRToken* simple_pass (struct IRToken *ir, const struct LexToken *tokens)
{
	for (uint32_t i = 0; i < (uint32_t) stdv_size(tokens); i++)
	{
		struct LexToken token = stdv_get(tokens, i);
		struct IRToken irt = {
			.action = (enum IRAction) *token.context,
			.aux = token.aux
		};
		stdv_put(ir, irt);
	}
	return ir;
}

static struct IRToken* optimize (struct IRToken *ir)
{
	struct IRToken none = {
		.action = INS_NOP
	};

	int32_t leftIndex = -1;

	for (uint32_t i = 0; i < (uint32_t) stdv_size(ir); i++)
	{
		struct IRToken *c = stdv_pget(ir, i);
		struct IRToken *n = stdv_pget_or(ir, i + 1, none);

		if ((c->action == INS_ADD && n->action == INS_SUB) || (c->action == INS_SUB && n->action == INS_ADD))
		{
			const int16_t aux = (uint16_t) c->aux - (uint16_t) n->aux;
			if (aux == 0)
			{
				c->action = INS_ZER;
				n->action = INS_NOP;
				i += 2;
				continue;
			}

			c->action = INS_MOV;
			c->aux = aux;

			n->action = INS_NOP;
			i += 2;
		}

		/* Loop optimizations do not perform any I/O operations during
		 * the braces
		 */
		if ((c->action == INS_OUT || c->action == INS_INP) && leftIndex)
		{
			leftIndex = -1;
		}
		else if (c->action == INS_LEF)
		{
			leftIndex = (int32_t) i;
			continue;
		}
		else if (c->action == INS_RIG && leftIndex != -1)
		{
			pattern_recognition(ir, (uint32_t) leftIndex, i);
			leftIndex = -1;
		}
	}
	return ir;
}

struct PatternMemb {
	const enum IRAction action;
	const int16_t aux;
};

struct Pattern {
	const struct PatternMemb *expected;
	const struct PatternMemb *replacement;
	const uint16_t length;
};

static void pattern_recognition (struct IRToken *ir, const uint32_t from, const uint32_t to)
{
	const struct Pattern fixedOptimizations [IR_NO_FIXED_OPTMZ] = {
		{
			.expected    = (struct PatternMemb []) {{INS_LEF, IR_NO_AUX}, {INS_RIG, IR_NO_AUX}},
			.replacement = (struct PatternMemb []) {{INS_NOP, IR_NO_AUX}, {INS_NOP, IR_NO_AUX}},
			.length      = 2,
		},
		{
			.expected    = (struct PatternMemb []) {{INS_LEF, IR_NO_AUX}, {INS_SUB, 1}, {INS_RIG, IR_NO_AUX}},
			.replacement = (struct PatternMemb []) {{INS_ZER, IR_NO_AUX}, {INS_NOP, 1}, {INS_NOP, IR_NO_AUX}},
			.length      = 3
		},
		{
			.expected    = (struct PatternMemb []) {{INS_LEF, IR_NO_AUX}, {INS_ADD, 1}, {INS_RIG, IR_NO_AUX}},
			.replacement = (struct PatternMemb []) {{INS_ZER, IR_NO_AUX}, {INS_NOP, 1}, {INS_NOP, IR_NO_AUX}},
			.length      = 3
		}
	};

	const uint32_t length = to - from + 1;
	bool optimized = false;

	for (uint32_t i = 0; i < IR_NO_FIXED_OPTMZ; i++)
	{
		const struct Pattern p = fixedOptimizations[i];
		if (length != p.length)
		{
			continue;
		}

		bool replace = true;
		for (uint32_t j = 0; j < p.length && replace; j++)
		{
			const enum IRAction actionShouldBe = p.expected[j].action;
			const int16_t auxShouldBe = p.expected[j].aux;

			const enum IRAction actionIs = stdv_get(ir, from + j).action;
			const int16_t auxIs = stdv_get(ir, from + j).aux;

			const bool isLoop = (actionShouldBe == INS_LEF || actionShouldBe == INS_RIG);
			if (isLoop && actionShouldBe == actionIs)
			{ continue; }

			if (actionShouldBe == actionIs && auxShouldBe == auxIs)
			{ continue; }

			replace = false;
		}

		for (uint32_t j = 0; j < p.length && replace; j++)
		{
			stdv_pget(ir, from + j)->action = p.replacement[j].action;
			optimized = true;
		}
	}

	if (optimized == false)
	{
		apply_further_optimization(ir, from, to);
	}
}

static void apply_further_optimization (struct IRToken *ir, const uint32_t from, const uint32_t to)
{
	int32_t startingCell = 0;
	bool cursorHasMoved = false;

#ifdef IR_DEBUG
	printf("Optimization ---------------------------------------------------------------------------------\n");
	printf("L%d\n", stdv_get(ir, from).aux);
	for (uint32_t i = from; i < to + 1; i++)
#else
	for (uint32_t i = from; i < to; i++)
#endif
	{
		const struct IRToken token = stdv_get(ir, i);
		if (token.action == INS_NXT) { startingCell += token.aux; cursorHasMoved = true; }
		if (token.action == INS_PRV) { startingCell -= token.aux; cursorHasMoved = true; }

#ifdef IR_DEBUG
		printf("(%-8s %d) ", ir_action_as_str(token.action), token.aux);
#endif
	}

	/* Optimizations where the cursor does not move are implemented in
	 * `pattern_recognition` function
	 */
	if (cursorHasMoved == false || startingCell != 0)
	{
#ifdef IR_DEBUG
		puts("\n\n\n");
#endif
		return;
	}

	for (uint32_t i = from; i < to + 1; i++)
	{
		struct IRToken *token = stdv_pget(ir, i);
		switch (token->action)
		{
			case INS_PRV:
			case INS_NXT: { continue; }

			case INS_ADD: { token->action = INS_MUL_ADD; break; }
			case INS_SUB: { token->action = INS_MUL_SUB; break; }

			case INS_LEF: { token->action = INS_MUL; break; }
			case INS_RIG: { token->action = INS_NOP; break; }

			default:
			{
				fprintf(stderr, "%s:ir: unreachable\n", PROGRAM_NAME);
				fprintf(stderr, "please create an issue at https://github.com/h0p3so/bfc with the full context of the program\n");
				exit(EXIT_FAILURE);
			}
		}
	}

#ifdef IR_DEBUG
	puts("\nreplaced by:");
	for (uint32_t i = from; i < to + 1; i++)
	{
		const struct IRToken token = stdv_get(ir, i);
		printf("(%-8s %d) ", ir_action_as_str(token.action), token.aux);
	}
	puts("\n\n\n");
#endif
}
