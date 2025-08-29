return {
	{ "christoomey/vim-tmux-navigator", lazy = false },
	{ "mrjones2014/smart-splits.nvim" },
	{ "tpope/vim-obsession", lazy = false },
	{ "tpope/vim-sleuth" },
	{ "folke/which-key.nvim" },
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {},
	},
	{ "asiryk/auto-hlsearch.nvim", opts = {} },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = { disable_mouse = false },
	},
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			lsp = { signature = { auto_open = { enabled = false } } },
			presets = {
				command_palette = { views = { cmdline_popup = { position = { row = "90%", col = "50%" } } } },
			},
		},
		dependencies = { "MunifTanjim/nui.nvim" },
	},
}
