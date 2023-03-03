-- Tab Spacing
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps
local keymap = vim.keymap.set

keymap("i", "jj", "<Esc>", { noremap = true })

keymap("n", "<leader>h", "<C-w>h", { noremap = true })
keymap("n", "<leader>j", "<C-w>j", { noremap = true })
keymap("n", "<leader>k", "<C-w>k", { noremap = true })
keymap("n", "<leader>l", "<C-w>l", { noremap = true })

keymap("n", "<leader>x", "<Esc>:q<cr> ", { noremap = true })
keymap("n", "Q", "<Esc>:qa!<cr> ", { noremap = true })
