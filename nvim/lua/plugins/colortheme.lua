return {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("cyberdream").setup({ transparent = true })

		vim.cmd.colorscheme("cyberdream")
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#7b8496" })
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#ff5ea0" })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#7b8496" })
	end,
}
