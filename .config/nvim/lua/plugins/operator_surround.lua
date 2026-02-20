return {
  'rhysd/vim-operator-surround',
  dependencies = { 'kana/vim-operator-user' },
  config = function()
    vim.keymap.set('n', 'ys', '<Plug>(operator-surround-append)', { remap = true })
    vim.keymap.set('n', 'ds', '<Plug>(operator-surround-delete)', { remap = true })
    vim.keymap.set('n', 'cs', '<Plug>(operator-surround-replace)', { remap = true })
  end,
}
