return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	opts = {
		ensure_installed = {
			"lua",
			"python",
			"javascript",
			"vimdoc",
			"vim",
			"sql",
			"dockerfile",
			"toml",
			"json",
			"gitignore",
			"yaml",
			"markdown",
			"markdown_inline",
			"bash",
			"css",
			"html",
		},
		-- Autoinstall languages that are not installed
		auto_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	},
}
