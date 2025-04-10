-- Standalone plugins with less than 10 lines of config go here
return {
	{ "christoomey/vim-tmux-navigator", lazy = false },
	{ "mrjones2014/smart-splits.nvim" },
	{ "tpope/vim-obsession", lazy = false },
	{ "tpope/vim-sleuth" },
	{ "folke/which-key.nvim" },
	{ "norcalli/nvim-colorizer.lua", opts = {} },
	{ "asiryk/auto-hlsearch.nvim", opts = {} },
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
		opts = {},
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
