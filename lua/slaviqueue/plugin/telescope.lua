return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['<C-u>'] = false,
            ['<C-d>'] = false,
          },
        },
      },
    }

    pcall(require('telescope').load_extension, 'fzf')

    vim.keymap.set('n', '<leader>fo', require('telescope.builtin').oldfiles)
    vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
    vim.keymap.set('n', '<leader>fib', function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end)

    vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files)
    vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
    vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
    vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics)
  end,
}
