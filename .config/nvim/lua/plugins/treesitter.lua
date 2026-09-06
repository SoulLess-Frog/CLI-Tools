return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"rust",
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
			"zsh",
			"fish",
			"javascript",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "<filetype>" },
			callback = function()
				vim.treesitter.start()
			end,
		})

		vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.wo[0][0].foldmethod = "expr"

		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
}
