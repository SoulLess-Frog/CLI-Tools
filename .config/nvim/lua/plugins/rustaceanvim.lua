return {
	"mrcjkb/rustaceanvim",
	version = "^6", -- Recommended
	lazy = false, -- This plugin is already lazy
	config = function()
		local bufnr = vim.api.nvim_get_current_buf()

		vim.keymap.set("n", "<leader>ca", function()
			vim.cmd.RustLsp("codeAction")
		end, { silent = true, buffer = bufnr })

		vim.keymap.set("n", "K", function()
			vim.cmd.RustLsp({ "hover", "actions" })
		end, { silent = true, buffer = bufnr })
	end,
}
