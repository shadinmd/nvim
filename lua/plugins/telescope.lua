return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.3',
	dependencies = {
		'nvim-lua/plenary.nvim',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
	},
	config = function()
		require('telescope').setup {
			pickers = {
				find_files = {
					hidden = true
				}
			},
			defaults = {
				file_ignore_patterns = { "node_modules", "git", "debug", "Debug" },
			},
			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				}
			}
		}
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
		vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
	end
}
