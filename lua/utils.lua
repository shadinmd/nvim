local M = {}

M.on_attach = function(_, bufnr)
	local nmap = function(key, func, desc)
		if desc then
			desc = 'LSP: ' .. desc
		end

		vim.keymap.set("n", key, func, { buffer = bufnr, desc = desc })
	end

	nmap('gd', require('telescope.builtin').lsp_definitions, '[G]oto [D]efinition')
	nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
	nmap('gI', require('telescope.builtin').lsp_implementations, '[G]oto [I]mplementation')
	nmap('<leader>D', require('telescope.builtin').lsp_type_definitions, 'Type [D]efinition')
	nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
	nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')
	nmap('K', vim.lsp.buf.hover)
end

M.servers = {
	tsserver = {},
	lua_ls = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	},
	tailwindcss = {},
	yamlls = {},
	jsonls = {},
	cssls = {},
	marksman = {},
	html = {},
	emmet_language_server = {}
}

return M
