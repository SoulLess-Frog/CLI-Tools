return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"c",
			"lua",
			"rust",
			"python",

			"html",
			"css",
			"javascript",
			"typescript",
			"tsx",

			"sql",
			"json",
			"yaml",
			"dockerfile",

			"vim",
			"vimdoc",
			"regex",
			"gitignore",
			"markdown",
			"markdown_inline",

			"bash",
			"zsh",
			"fish",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "*" },
			callback = function()
				local ok = pcall(vim.treesitter.start)
				if not ok then
					return
				end

				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
