return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "diagnostics" },
				lualine_c = {
					{ require("noice").api.statusline.mode.get, cond = require("noice").api.statusline.mode.has },
				},
				lualine_x = { "diff" },
				lualine_y = { "filetype" },
				lualine_z = { "progress" },
			},
		})
	end,
}
