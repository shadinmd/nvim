return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()

		local masonlsp = require("mason-lspconfig")
		local servers = require("utils").servers
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

		masonlsp.setup({
			ensure_installed = vim.tbl_keys(servers),
		})

		for server_name, config in pairs(servers) do
			require("lspconfig")[server_name].setup({
				capabilities = capabilities,
				on_attach = require("utils").on_attach,
				settings = config,
				filetypes = config.filetypes,
			})
		end
	end,
}
