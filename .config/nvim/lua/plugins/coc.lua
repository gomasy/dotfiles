return {
  'neoclide/coc.nvim',
  branch = 'release',
  event = 'InsertEnter',
  cond = function() return vim.fn.executable('node') == 1 end,
  init = function()
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
  end,
}
