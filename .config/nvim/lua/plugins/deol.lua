return {
  repo = 'Shougo/deol.nvim',
  lua_add = [[
    vim.keymap.set('n', 'df', ':Deol -split=floating<CR>', { silent = true })
    vim.keymap.set('n', 'dv', ':Deol -split=vertical<CR>', { silent = true })
    vim.keymap.set('n', 'dh', ':Deol -split=horizontal<CR>', { silent = true })
  ]],
}
