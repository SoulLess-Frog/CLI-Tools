-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = function(mode, keys, func, desc)
	vim.keymap.set(mode, keys, func, { noremap = true, silent = true, desc = desc })
end

-- Disable the spacebar key's default behavior in Normal and Visual modes
map({ "n", "v" }, "<Space>", "<Nop>", "")

-- save file
map("n", "<leader>w", ":w <CR>", "[W]rite file")

-- quit file
map("n", "<C-q>", ":q <CR>", "")

-- delete single character without copying into register
map("n", "x", '"_x', "")

-- Find and open fold
map("n", "n", "nzv", "")
map("n", "N", "Nzv", "")

-- Buffers
map("n", "<S-l>", ":bnext<CR>", "")
map("n", "<S-h>", ":bprevious<CR>", "")

map("n", "<leader>q", function()
	Snacks.bufdelete()
end, "[Q]uit buffer")
map("n", "<leader>x", function()
	vim.cmd.write()
	Snacks.bufdelete()
end, "Write and quit buffer")
map("n", "<leader>b", ":enew <CR>", "New [B]uffer") -- new buffer

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

-- Snacks
map("n", "<leader>sh", function()
	Snacks.picker.help()
end, "[S]earch [H]elp")
map("n", "<leader>sk", function()
	Snacks.picker.keymaps()
end, "[S]earch [K]eymaps")
map("n", "<leader>sf", function()
	Snacks.picker.files()
end, "[S]earch [F]iles")
map("n", "<leader>sw", function()
	Snacks.picker.grep_word()
end, "[S]earch current [W]ord")
map("n", "<leader>sg", function()
	Snacks.picker.grep()
end, "[S]earch by [G]rep")
map("n", "<leader>sd", function()
	Snacks.picker.diagnostics()
end, "[S]earch [D]iagnostics")
map("n", "<leader>sr", function()
	Snacks.picker.resume()
end, "[S]earch [R]esume")
map("n", "<leader>s.", function()
	Snacks.picker.recent()
end, '[S]earch Recent Files ("." for repeat)')
map("n", "<leader><leader>", function()
	Snacks.picker.buffers()
end, "[ ] Find existing buffers")
map("n", "<leader>st", function()
	Snacks.picker.todo_comments()
end, "[S]earch all [T]odo comments")
map("n", "<leader>sT", function()
	Snacks.picker.todo_comments({ keywords = { "TODO", "FIX", "FIXME" } })
end, "[S]earch only [T]odo/Fix/Fixme")

-- remove some key mapping
vim.keymap.del("n", "grn")
vim.keymap.del("n", "gra")
vim.keymap.del("n", "grr")
vim.keymap.del("n", "gri")
vim.keymap.del("n", "grt")
