return {
  {
    'TheNiteCoder/mountaineer.vim',
    config = function()
      vim.cmd 'colorscheme mountaineer'

      -- for some reason search hit highlighting is broken
      vim.cmd 'hi Search guibg=peru guifg=wheat'

      -- a bit lighter comments
      vim.cmd 'hi Comment guifg=#666666'

      -- a bit lighter line numbers
      vim.cmd 'hi LineNr guifg=#666666'
    end,
  },
}
