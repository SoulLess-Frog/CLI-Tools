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
			pylsp = {
				settings = {
					pylsp = {
						plugins = {
							pyflakes = { enabled = false },
							pycodestyle = { enabled = false },
							autopep8 = { enabled = false },
							yapf = { enabled = false },
							mccabe = { enabled = false },
							pylsp_mypy = { enabled = false },
							pylsp_black = { enabled = false },
							pylsp_isort = { enabled = false },
						},
					},
				},
			},
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
		})

		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		for server, config in pairs(opts.servers) do
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end,
}
