return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	ft = { "markdown" },
	opts = {
		anti_conceal = {
			enabled = false,
		},
	},
	config = function(_, opts)
		require("render-markdown").setup(opts)
		vim.keymap.set("n", "<leader>m", ":RenderMarkdown toggle<CR>", { desc = "Toggle Render Markdown" })
	end,
}
