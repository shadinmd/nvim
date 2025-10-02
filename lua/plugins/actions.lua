return {
	"aznhe21/actions-preview.nvim",
	config = function()
		vim.keymap.set("n", "<leader>a", require("actions-preview").code_actions, { noremap = true, silent = true })
	end,
}
