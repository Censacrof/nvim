return {
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		init = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.extend_lspconfig()

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			-- here you can setup the language servers	
			require("mason").setup({})
			require("mason-lspconfig").setup({
				-- Replace the language servers listed here
				-- with the ones you want to install
				ensure_installed = {
					"tsserver",
					"eslint",
					"rust_analyzer"
				},
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({})
					end,
				},
			})
		end
	},
}
