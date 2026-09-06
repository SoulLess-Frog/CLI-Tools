return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		require("mini.ai").setup()
		require("mini.diff").setup()
		require("mini.pairs").setup()
		require("mini.surround").setup()
		require("mini.sessions").setup()
	end,
}
