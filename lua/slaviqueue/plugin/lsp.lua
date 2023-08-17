return {
  'neovim/nvim-lspconfig',
  dependencies = {
    { 'williamboman/mason.nvim' },
    { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
    { 'folke/neodev.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'jose-elias-alvarez/null-ls.nvim' },
    { 'jay-babu/mason-null-ls.nvim' },
  },
  config = function()
    local on_attach = function(_, bufnr)
      local nmap = function(keys, func)
        vim.keymap.set('n', keys, func, { buffer = bufnr })
      end

      nmap('<leader>lr', vim.lsp.buf.rename)
      nmap('<leader>la', vim.lsp.buf.code_action)
      nmap('<leader>lf', vim.lsp.buf.format)

      nmap('gd', vim.lsp.buf.definition)
      nmap('gr', require('telescope.builtin').lsp_references)
      nmap('gI', vim.lsp.buf.implementation)

      nmap('<leader>D', vim.lsp.buf.type_definition)
      nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols)
      nmap('K', vim.lsp.buf.hover)
      nmap('<C-k>', vim.lsp.buf.signature_help)
      nmap('gD', vim.lsp.buf.declaration)

      vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format()
      end, { desc = 'Format current buffer with LSP' })
    end

    local servers = {
      clangd = {},
      -- gopls = {},
      -- pyright = {},
      -- rust_analyzer = {},
      -- tsserver = {},
      -- html = { filetypes = { 'html', 'twig', 'hbs'} },

      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    }

    require('neodev').setup()

    require('mason').setup()
    require('mason-null-ls').setup {
      ensure_installed = { 'stylua', 'jq' },
      handlers = {},
    }
    require('null-ls').setup()

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

    local mason_lspconfig = require 'mason-lspconfig'

    mason_lspconfig.setup {
      ensure_installed = vim.tbl_keys(servers),
    }

    mason_lspconfig.setup_handlers {
      function(server_name)
        require('lspconfig')[server_name].setup {
          capabilities = capabilities,
          on_attach = on_attach,
          settings = servers[server_name],
          filetypes = (servers[server_name] or {}).filetypes,
        }
      end,
    }
  end,
}
