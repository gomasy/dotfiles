return {
  'Shougo/deol.nvim',
  config = function()
    vim.keymap.set('n', 'df', ':Deol -split=floating<CR>', { silent = true })
    vim.keymap.set('n', 'dv', ':Deol -split=vertical<CR>', { silent = true })
    vim.keymap.set('n', 'dh', ':Deol -split=horizontal<CR>', { silent = true })
  end,
}
