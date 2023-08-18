local opt = { noremap = true, silent = true }

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Space>', '<Nop>', opt)

vim.keymap.set('n', '<C-h>', '<C-w>h', opt)
vim.keymap.set('n', '<C-j>', '<C-w>j', opt)
vim.keymap.set('n', '<C-k>', '<C-w>k', opt)
vim.keymap.set('n', '<C-l>', '<C-w>l', opt)

vim.keymap.set('n', '<leader>w', ':w<cr>', opt)
vim.keymap.set('n', '<leader>q', ':q<cr>', opt)

vim.keymap.set('v', 'p', '"_dP', opt)

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opt)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opt)

vim.keymap.set('n', '<leader>h', ':noh<cr>', opt)
