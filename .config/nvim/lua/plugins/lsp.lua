return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	opts = {
		servers = {
			cssls = {},
			ts_ls = {},
			tailwindcss = {},
			emmet_language_server = {},
			sqlls = {},
			jsonls = {},
			yamlls = {},
			dockerls = {},
			rust_analyzer = {},
			basedpyright = {},
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim", "Snacks" },
						},
						telemetry = { enable = false },
						format = {
							enable = false,
						},
						hint = { enable = true },
					},
				},
			},
		},
	},

	keys = {
		{
			"<leader>rn",

			function()
				vim.lsp.buf.rename()
			end,
			desc = "[R]e[N]ame",
		},
		{
			"<leader>ca",
			function()
				vim.lsp.buf.code_action()
			end,
			desc = "[C]ode [A]ction",
		},
		{
			"gd",
			function()
				Snacks.picker.lsp_definitions()
			end,
			desc = "[G]oto [D]efinition",
		},
		{
			"gD",
			function()
				Snacks.picker.lsp_declarations()
			end,
			desc = "[G]oto [D]eclaration",
		},
		{
			"gr",
			function()
				Snacks.picker.lsp_references()
			end,
			nowait = true,
			desc = "[G]oto [R]eferences",
		},
		{
			"gI",
			function()
				Snacks.picker.lsp_implementations()
			end,
			desc = "[G]oto [I]mplementation",
		},
		{
			"gy",
			function()
				Snacks.picker.lsp_type_definitions()
			end,
			desc = "[G]oto T[y]pe Definition",
		},
	},

	config = function(_, opts)
		require("mason").setup()

		local ensure_installed = vim.tbl_keys(opts.servers or {})
		vim.list_extend(ensure_installed, {
			"stylua",
			"prettierd",
			"prettier",
			"ruff",
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		for server, config in pairs(opts.servers) do
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
