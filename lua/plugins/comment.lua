return {
	"numToStr/Comment.nvim",
	event = "VeryLazy",
	dependencies = {
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		local ts_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()

		require("Comment").setup({
			pre_hook = function(ctx)
				local ft = vim.bo.filetype

				local no_comment = {
					json = true,
					jsonc = true,
					dotenv = true,
					env = true,
				}

				if no_comment[ft] then
					return ""
				end

				return ts_hook(ctx)
			end,
		})
	end,
}
