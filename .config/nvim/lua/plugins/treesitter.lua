return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.config", -- Sets main module to use for opts
	opts = {
		ensure_installed = {
			"lua",
			"python",
			"c",
			"rust",
			"html",
			"css",
			"javascript",
			"typescript",
			"tsx",
			"sql",
			"vim",
			"vimdoc",
			"gitignore",
			"json",
			"yaml",
			"dockerfile",
			"markdown",
			"markdown_inline",
			"bash",
			"fish",
			"hyprlang",
		},

		-- Autoinstall languages that are not installed
		auto_install = true,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
