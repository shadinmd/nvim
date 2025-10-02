vim.g.mapleader = " "

vim.keymap.set("n", "<leader>q", ":qa<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", ":noh<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":wa<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })

vim.keymap.set("t", "<A-j>", "<C-\\><C-N><C-w>j", { noremap = true, silent = true })
vim.keymap.set("t", "<A-k>", "<C-\\><C-N><C-w>k", { noremap = true, silent = true })
vim.keymap.set("t", "<A-l>", "<C-\\><C-N><C-w>l", { noremap = true, silent = true })
vim.keymap.set("t", "<A-h>", "<C-\\><C-N><C-w>h", { noremap = true, silent = true })

vim.keymap.set("n", "<A-S-h>", "<C-w><", { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-l>", "<C-w>>", { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-j>", "<C-w>-", { noremap = true, silent = true })
vim.keymap.set("n", "<A-S-k>", "<C-w>+", { noremap = true, silent = true })
