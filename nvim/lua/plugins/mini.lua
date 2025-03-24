return {
	{ "echasnovski/mini.ai", version = "*" },
	{ "echasnovski/mini.surround", version = "*" },
	{ "echasnovski/mini.pairs", version = "*" },
	{
		"echasnovski/mini.comment",
		version = "*",

		config = function()
			require("mini.ai").setup()
			require("mini.pairs").setup()
			require("mini.comment").setup()
			require("mini.surround").setup()
		end,
	},
}
