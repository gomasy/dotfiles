return {
  repo = 'rhysd/vim-operator-surround',
  lua_add = [[
    vim.keymap.set('n', 'ys', '<Plug>(operator-surround-append)', { remap = true })
    vim.keymap.set('n', 'ds', '<Plug>(operator-surround-delete)', { remap = true })
    vim.keymap.set('n', 'cs', '<Plug>(operator-surround-replace)', { remap = true })
  ]],
}
