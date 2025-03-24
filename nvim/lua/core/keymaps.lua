-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, keys, func, desc)
	vim.keymap.set(mode, keys, func, { noremap = true, silent = true, desc = desc })
end

-- Disable the spacebar key's default behavior in Normal and Visual modes
map({ "n", "v" }, "<Space>", "<Nop>", "")

-- save file
map("n", "<leader>w", "<cmd> w <CR>", "[W]right file")

-- quit file
map("n", "<C-q>", "<cmd> q! <CR>", "")
map("n", "<C-x>", "<cmd> wq <CR>", "")

-- delete single character without copying into register
map("n", "x", '"_x', "")

-- Find and open fold
map("n", "n", "nzv", "")
map("n", "N", "Nzv", "")

-- Buffers
map("n", "<S-l>", ":bnext<CR>", "")
map("n", "<S-h>", ":bprevious<CR>", "")
map("n", "<leader>q", ":bd! <CR>", "[Q]uit buffer") -- close buffer
map("n", "<leader>x", ":w <CR>|:bd! <CR>", "Wright and quit buffer") -- close buffer
map("n", "<leader>b", "<cmd> enew <CR>", "New [B]uffer") -- new buffer

-- Window management
map("n", "<leader>v", "<C-w>v", "Split [V]ertically") -- split window vertically
map("n", "<leader>h", "<C-w>s", "Split [H]orizontally") -- split window horizontally

-- Navigate between splits
map("n", "<A-h>", ":SmartResizeLeft<CR>", "")
map("n", "<A-j>", ":SmartResizeDown<CR>", "")
map("n", "<A-k>", ":SmartResizeUp<CR>", "")
map("n", "<A-l>", ":SmartResizeRight<CR>", "")

-- Toggle line wrapping
map("n", "<leader>tw", ":set wrap!<CR>", "[T]oggle [W]rap")

-- Stay in indent mode
map("v", "<", "<gv", "")
map("v", ">", ">gv", "")
