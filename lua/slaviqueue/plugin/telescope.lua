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
    {
      'nvim-telescope/telescope-live-grep-args.nvim',
      version = '^1.0.0',
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
    require('telescope').load_extension 'live_grep_args'

    vim.keymap.set('n', '<leader>fo', require('telescope.builtin').oldfiles)
    vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
    vim.keymap.set('n', '<leader>fib', function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end)

    vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files)
    vim.keymap.set('n', '<leader>ff', function()
      require('telescope.builtin').find_files { hidden = true }
    end)
    vim.keymap.set('n', '<leader>fg', require('telescope').extensions.live_grep_args.live_grep_args)
    vim.keymap.set('n', '<leader>fd', require('telescope.builtin').diagnostics)
  end,
}
