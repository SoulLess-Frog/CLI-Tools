return {
	"CRAG666/code_runner.nvim",
	dependencies = { "preservim/vimux" },
	config = function()
		require("code_runner").setup({
			mode = "vimux",
			filetype = {
				python = "uv run",
				rust = {
					"cd $dir &&",
					"rustc $fileName &&",
					"$dir/$fileNameWithoutExt",
				},
			},
		})
	end,
}
