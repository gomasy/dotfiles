return {
  {
    'williamboman/mason.nvim',
    cmd = 'Mason',
    build = ':MasonUpdate',
    opts = {},
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim', 'neovim/nvim-lspconfig' },
    opts = function()
      local servers = {}
      if vim.fn.executable('npm') == 1 then
        servers = {
          'bashls',
          'cssls',
          'dockerls',
          'html',
          'intelephense',
          'jsonls',
          'lua_ls',
          'marksman',
          'ruby_lsp',
          'ts_ls',
          'vue_ls',
          'yamlls',
        }
      end
      return {
        ensure_installed = servers,
        automatic_enable = true,
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.lsp.config('*', {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
        on_attach = function(_, bufnr)
          local opts = { buffer = bufnr }
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
          vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
        end,
      })
    end,
  },
}
