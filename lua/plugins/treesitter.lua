return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	opts = {
		ensure_installed = {
			"lua",
			"vim",
			"vimdoc",
			"typescript",
			"javascript",
			"tsx",
			"html",
			"markdown",
			"yaml",
			"json",
		},
		highlight = { enable = true },
		indent = { enable = true },
	},

	config = function(_, opts)
		-- require("nvim-treesitter").setup(opts)

		-- vim.treesitter.language.register("tsx", "typescriptreact")
		-- vim.treesitter.language.register("tsx", "javascriptreact")
		vim.api.nvim_create_autocmd("BufReadPost", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
