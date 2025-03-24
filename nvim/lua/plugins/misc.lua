-- Standalone plugins with less than 10 lines of config go here
return {
	{ "christoomey/vim-tmux-navigator", lazy = false },
	{ "mrjones2014/smart-splits.nvim" },
	{ "tpope/vim-obsession", lazy = false },
	{ "tpope/vim-sleuth" },
	{ "folke/which-key.nvim" },
	{
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		"asiryk/auto-hlsearch.nvim",
		config = function()
			require("auto-hlsearch").setup({
				remap_keys = { "/", "?", "*", "#", "n", "N" },
				create_commands = true,
				pre_hook = function() end,
				post_hook = function() end,
			})
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim" },
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		config = function()
			require("noice").setup({
				lsp = { signature = { auto_open = { enabled = false } } },
				presets = {
					command_palette = { views = { cmdline_popup = { position = { row = "90%", col = "50%" } } } },
				},
			})
		end,
		dependencies = { "MunifTanjim/nui.nvim" },
	},
}
