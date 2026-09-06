return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"folke/snacks.nvim",
	},
	ft = "python", -- Load when opening Python files

	keys = { { "<leader>se", ":VenvSelect<cr>", desc = "[S]earch [E]nvironment" } },
	opts = {
		options = {
			picker = "snacks",
		},
	},
}
