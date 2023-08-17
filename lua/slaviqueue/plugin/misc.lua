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
  {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function()
      require('Comment').setup {
        toggler = {
          line = '<leader>/',
        },
        opleader = {
          line = '<leader>/',
        },
      }
    end,
  },
}
