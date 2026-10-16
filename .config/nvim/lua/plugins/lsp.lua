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
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
      ensure_installed = vim.fn.executable('npm') == 1 and {
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
      } or {},
    },
  },
  {
    'neovim/nvim-lspconfig',
    version = '*',
    -- blink.cmp registers its LSP capabilities when loaded
    dependencies = { 'saghen/blink.cmp' },
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = args.buf })
        end,
      })
    end,
  },
}
