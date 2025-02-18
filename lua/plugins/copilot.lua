return {
	"github/copilot.vim",
	enabled = true,
	config = function()
		-- Optional: Customize GitHub Copilot settings
		vim.g.copilot_no_tab_map = true -- Disable default Tab mapping
		vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
		vim.g.copilot_filetypes = {
			["*"] = true, -- Enable Copilot for all file types
			markdown = true,
			lua = true,
			python = true,
			javascript = true,
		}
	end,
}
