return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()
    vim.keymap.set('n', 'df', '<cmd>ToggleTerm direction=float<CR>', { silent = true })
    vim.keymap.set('n', 'dv', '<cmd>ToggleTerm direction=vertical<CR>', { silent = true })
    vim.keymap.set('n', 'dh', '<cmd>ToggleTerm direction=horizontal<CR>', { silent = true })
  end,
}
