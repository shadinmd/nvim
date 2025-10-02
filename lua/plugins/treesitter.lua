return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	main = "nvim-treesitter.configs",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		local configs = require("nvim-treesitter.configs")
		require("nvim-ts-autotag").setup({})

		configs.setup({
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
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
