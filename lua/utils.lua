local M = {}

M.servers = {
	ts_ls = {},
	lua_ls = {
		settings = {
			Lua = {
				completion = {
					callSnippet = "Replace",
				},
			},
		},
	},
	tailwindcss = {},
	yamlls = {},
	jsonls = {},
	cssls = {},
	marksman = {},
	html = {},
	emmet_language_server = {},
}

return M
