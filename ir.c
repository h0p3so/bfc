#include "ir.h"
#include "stdv.h"

static struct IRToken* simple_pass (struct IRToken*, const struct Token*);

struct IRToken* ir_gen (const struct Token *tokens, const bool optimize)
{
	struct IRToken *ir = stdv_create(sizeof(struct IRToken), STDV_STD_INIT_CAP);
	if (optimize == false)
	{
		return simple_pass(ir, tokens);
	}

	// TODO: optimizations
	return ir;
}

static struct IRToken* simple_pass (struct IRToken *ir, const struct Token *tokens)
{
	for (uint32_t i = 0; i < (uint32_t) stdv_size(tokens); i++)
	{
		struct Token token = stdv_get(tokens, i);
		struct IRToken irt = {
			.action = (enum IRAction) *token.context,
			.lex_aux = token.aux
		};
		stdv_put(ir, irt);
	}
	return ir;
}
