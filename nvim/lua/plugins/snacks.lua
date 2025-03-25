return {
	"folke/snacks.nvim",
	priority = 1000,
	opts = {
		indent = { enabled = true },
		scroll = { enabled = true },
		bigfile = { enabled = true },
		image = { enabled = true },
		notifier = { enabled = true },
		picker = {
			enabled = true,
			win = {
				input = {
					keys = {
						["J"] = { "preview_scroll_down", mode = { "n" } },
						["K"] = { "preview_scroll_up", mode = { "n" } },
					},
				},
			},
		},

		dashboard = {
			enabled = true,
			sections = {
				{ section = "header" },
				{
					title = "Keymaps",
					indent = 2,
					padding = 1,
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{
						icon = " ",
						key = "g",
						desc = "Find Text",
						action = ":lua Snacks.dashboard.pick('live_grep')",
					},
					{
						icon = " ",
						key = "r",
						desc = "Recent Files",
						action = ":lua Snacks.dashboard.pick('oldfiles')",
					},
					{
						icon = " ",
						key = "c",
						desc = "Config",
						action = ":cd ~/.config/nvim/ | :lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')}) ",
					},
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{
						icon = "󰒲 ",
						key = "L",
						desc = "Lazy",
						action = ":Lazy",
						enabled = package.loaded.lazy ~= nil,
					},
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ section = "startup" },
			},
		},
	},
}
