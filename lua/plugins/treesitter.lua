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
}
