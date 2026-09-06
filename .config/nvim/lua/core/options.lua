vim.o.number = true
vim.o.relativenumber = true -- Set relative numbered lines (default: false)
vim.o.fillchars = "eob: "

vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim. (default: '')
vim.o.mouse = ""

vim.o.wrap = false -- Display lines as one long line (default: true)
vim.o.linebreak = true -- Companion to wrap, don't split words (default: false)

vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search (default: false)
vim.o.smartcase = true -- Smart case (default: false)
-- vim.o.incsearch = false -- stop the jumping in search

vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation (default: 8)
vim.o.tabstop = 4 -- Insert n spaces for a tab (default: 8)
vim.o.softtabstop = -1 -- Number of spaces that a tab counts for while performing editing operations (default: 0)
vim.o.expandtab = true -- Convert tabs to spaces (default: false)
vim.o.smartindent = true -- Make indenting smarter again (default: false)
vim.o.breakindent = true -- Enable break indent (default: false)

vim.o.scrolloff = 12 -- Minimal number of screen lines to keep above and below the cursor (default: 0)
vim.o.sidescrolloff = 12 -- Minimal number of screen columns either side of cursor if wrap is `false` (default: 0)

vim.o.splitbelow = true -- Force all horizontal splits to go below current window (default: false)
vim.o.splitright = true -- Force all vertical splits to go to the right of current window (default: false)

vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore (default: true)
vim.o.termguicolors = true -- Set termguicolors to enable highlight groups (default: false)
vim.o.swapfile = false -- Creates a swapfile (default: true)
vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.o.signcolumn = "yes" -- Keep signcolumn on by default (default: 'auto')
vim.o.timeoutlen = 300 -- Time to wait for a mapped sequence to complete (in milliseconds) (default: 1000)
vim.o.writebackup = false -- If a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited (default: true)
vim.o.undofile = true -- Save undo history (default: false)

vim.diagnostic.config({
	underline = false,
	severity_sort = true,
	update_in_insert = true,
	virtual_lines = { current_line = true },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
})

-- Highlight on yank
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
