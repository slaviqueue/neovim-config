vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = 'yes'
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.hlsearch = false
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.netrw_banner = false

vim.opt.whichwrap:append 'h,l'

vim.cmd 'highlight clear SignColumn'
