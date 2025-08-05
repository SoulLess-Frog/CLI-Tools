return {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	opts = {
		servers = {
			html = { filetypes = { "html", "twig", "hbs" } },
			cssls = {},
			dockerls = {},
			sqlls = {},
			jsonls = {},
			yamlls = {},
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

	config = function(_, opts)
		require("mason").setup()

		local ensure_installed = vim.tbl_keys(opts.servers or {})
		vim.list_extend(ensure_installed, {
			"stylua",
			"prettierd",
			"prettier",
			"rustfmt",
			"ruff",
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		for server, config in pairs(opts.servers) do
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
