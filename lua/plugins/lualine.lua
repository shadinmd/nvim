return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_a = {
					"fileformat",
					"mode",
				},
				lualine_b = {
					{
						"filename",
						path = 1,
					},
				},
				lualine_c = {},
				lualine_x = {
					"filetype",
				},
				lualine_y = {
					"diagnostics",
					"branch",
				},
				lualine_z = {
					"progress",
				},
			},
		})
	end,
}
