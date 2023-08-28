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
  {
    'kdheepak/lazygit.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      vim.keymap.set('n', '<leader>gg', ':LazyGit<cr>', { silent = true })
    end,
  },
  { 'lukas-reineke/indent-blankline.nvim' },
  { 'tpope/vim-surround' },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {}, -- this is equalent to setup({}) function
  },
  {
    'folke/trouble.nvim',
    config = function()
      vim.keymap.set('n', '<leader>tt', ':TroubleToggle<cr>', { silent = true })
    end,
  },
}
