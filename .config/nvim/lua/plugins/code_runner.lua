return {
	"CRAG666/code_runner.nvim",
	dependencies = { "preservim/vimux" },

	keys = {
		{
			"<leader>rf",
			function()
				require("code_runner").run_code()
			end,
			desc = "[R]un [F]ile",
		},
	},

	config = function()
		require("code_runner").setup({
			mode = "vimux",
			filetype = {
				python = "uv run",
				rust = "cargo run",
				javascript = "node",
			},
		})

		vim.g.VimuxHeight = "40%"
		vim.g.VimuxOrientation = "h"
	end,
}
