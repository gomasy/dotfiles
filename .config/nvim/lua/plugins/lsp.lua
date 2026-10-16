return {
  {
    'mason-org/mason.nvim',
    version = '*',
    cmd = 'Mason',
    build = ':MasonUpdate',
    opts = {},
  },
  {
    'mason-org/mason-lspconfig.nvim',
    version = '*',
    dependencies = { 'mason-org/mason.nvim', 'neovim/nvim-lspconfig' },
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
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    version = '*',
    -- blink.cmp registers its LSP capabilities when loaded
    dependencies = { 'saghen/blink.cmp' },
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.lsp.config('*', {
        on_attach = function(_, bufnr)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = bufnr })
        end,
      })
    end,
  },
}
