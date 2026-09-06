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
				local filetype = vim.bo.filetype
				local language = vim.treesitter.language.get_lang(filetype) or filetype

				local ok = pcall(vim.treesitter.start)
				if not ok then
					vim.notify_once(("Tree-sitter parser unavailable for: %s"):format(language), vim.log.levels.WARN)
					return
				end

				vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
				vim.wo[0][0].foldmethod = "expr"

				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
