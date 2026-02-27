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
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
        end,
      })
    end,
  },
}
