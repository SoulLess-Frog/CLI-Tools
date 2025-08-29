return {
	"linux-cultist/venv-selector.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	ft = "python", -- Load when opening Python files

	keys = { { "<leader>se", ":VenvSelect<cr>", desc = "[S]earch [E]nvironment" } },
	opts = {},
}
