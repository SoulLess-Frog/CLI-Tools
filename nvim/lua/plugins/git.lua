return {
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-rhubarb" },
	{
		"neogitorg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = true,

		keys = {
			{ "<leader>gs", ":Neogit<cr>", desc = "[G]it [S]tatus" },
			{ "<leader>gc", ":Neogit commit<cr>", desc = "[G]it [C]ommit" },
			{ "<leader>gp", ":Neogit pull<cr>", desc = "[G]it [P]ull" },
			{ "<leader>gP", ":Neogit push<cr>", desc = "[G]it [P]ush" },
			{
				"<leader>gb",
				function()
					Snacks.picker.git_branches()
				end,
				desc = "[G]it [P]ush",
			},
			{ "<leader>gB", ":G blame<cr>", desc = "[G]it [B]lame" },
			{ "<leader>ga", ":Gw<cr>", desc = "[G]it [A]dd this file" },
			{ "<leader>gd", ":Gdiffsplit<cr>", desc = "[G]it [D]iff" },
		},
	},
}
