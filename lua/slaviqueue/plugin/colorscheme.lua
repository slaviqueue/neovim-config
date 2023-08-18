return {
  {
    'TheNiteCoder/mountaineer.vim',
    config = function()
      vim.cmd 'colorscheme mountaineer'

      -- for some reason search hit highlighting is broken
      vim.cmd 'hi Search guibg=peru guifg=wheat'
    end,
  },
}
