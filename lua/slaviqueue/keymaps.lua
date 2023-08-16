local opt = { noremap = true, silent = true }

local keymap = vim.keymap.set

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

keymap('n', '<Space>', '<Nop>', opt)

keymap('n', '<leader>e', ':Lex 30<cr>', opt)

keymap('n', '<C-h>', '<C-w>h', opt)
keymap('n', '<C-j>', '<C-w>j', opt)
keymap('n', '<C-k>', '<C-w>k', opt)
keymap('n', '<C-l>', '<C-w>l', opt)

keymap('n', '<leader>w', ':w<cr>', opt)
keymap('n', '<leader>q', ':q<cr>', opt)

keymap('v', 'p', '"_dP', opt)

keymap('n', '[d', vim.diagnostic.goto_prev, opt)
keymap('n', ']d', vim.diagnostic.goto_next, opt)
-- keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
-- keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
