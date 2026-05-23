#include "libs/stdv.h"

#include "ir.h"

#include <stdio.h>

static struct IRToken* simple_pass (struct IRToken*, const struct LexToken*);
static struct IRToken* optimize (struct IRToken*);

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
		case INT_INP: return "INP";
		case INS_LEF: return "LEF";
		case INS_RIG: return "RIG";
		case INS_ZER: return "ZER";
		case INS_SET: return "SET";
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

	for (uint32_t i = 0; i < (uint32_t) stdv_size(ir); i++)
	{
		struct IRToken *c = stdv_pget(ir, i);
		struct IRToken *n = stdv_pget_or(ir, i + 1, none);

		if ((c->action == INS_ADD && n->action == INS_SUB) || (c->action == INS_SUB && n->action == INS_ADD))
		{
			const int16_t aux = c->aux - n->aux;
			if (aux == 0)
			{
				c->action = INS_ZER;
				n->action = INS_NOP;
				i += 2;
				continue;
			}

			const bool isPositive = (aux > 0);
			c->action = (isPositive) ? INS_ADD : INS_SUB;
			c->aux = (uint16_t) ((isPositive) ? aux : aux * -1);

			n->action = INS_NOP;
			i += 2;
		}
	}

	return ir;
}
