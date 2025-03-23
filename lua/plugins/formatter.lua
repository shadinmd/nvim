return {
	'mhartington/formatter.nvim',
	config = function()
		local filetypes = {
			javascript = {
				require('formatter.filetypes.javascript').prettier,
			},
			typescript = {
				require('formatter.filetypes.typescript').prettier,
			},
			json = {
				require('formatter.filetypes.json').prettier,
			},
			css = {
				require('formatter.filetypes.css').prettier,
			},
			html = {
				require('formatter.filetypes.html').prettier,
			},
			typescriptreact = {
				require("formatter.filetypes.typescript").prettier
			},
			javascriptreact = {
				require("formatter.filetypes.typescript").prettier
			},
			jsx = {
				require("formatter.filetypes.javascript").prettier
			},
			go = {
				require("formatter.filetypes.go").gofmt
			},

		}

		require('formatter').setup({
			logging = true,
			log_level = vim.log.levels.DEBUG,
			filetype = filetypes,


		})

		local format = function()
			-- vim.print(vim.bo.filetype)
			for key, _ in pairs(filetypes) do
				if key == vim.bo.filetype then
					vim.cmd("Format")
					return
				end
			end

			if vim.lsp.buf.format then
				vim.lsp.buf.format()
			end
		end

		vim.keymap.set('n', '<leader>f', format, { noremap = true, silent = true })
	end,
}
