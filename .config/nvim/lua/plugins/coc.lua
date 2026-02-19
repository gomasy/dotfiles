return {
  repo = 'neoclide/coc.nvim',
  on_event = 'InsertEnter',
  rev = 'release',
  ['if'] = 'executable("node")',
  lua_add = [[
    vim.g.coc_global_extensions = {
      'coc-snippets',
      'coc-css',
      'coc-json',
      'coc-phpls',
      'coc-solargraph',
      'coc-tsserver',
      'coc-vetur',
    }
    vim.keymap.set('i', '<Tab>', function()
      return vim.fn.pumvisible() ~= 0 and '<C-n>' or '<Tab>'
    end, { silent = true, expr = true })
  ]],
}
