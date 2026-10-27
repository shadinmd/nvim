return {
	"numToStr/Comment.nvim",
	event = "VeryLazy",
	config = function()
		require("Comment").setup({
			pre_hook = function()
				if vim.bo.filetype == "env" then
					return vim.bo.commentstring
				end

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
			end,
		})
	end,
}
