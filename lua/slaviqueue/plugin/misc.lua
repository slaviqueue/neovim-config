return {
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',
  'tpope/vim-sleuth',
  {
    'folke/zen-mode.nvim',
    config = function()
      vim.keymap.set('n', '<leader>zm', ':ZenMode<cr>')
    end,
  },
}
