return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup()
    vim.keymap.set('n', 'df', ':ToggleTerm direction=float<CR>', { silent = true })
    vim.keymap.set('n', 'dv', ':ToggleTerm direction=vertical<CR>', { silent = true })
    vim.keymap.set('n', 'dh', ':ToggleTerm direction=horizontal<CR>', { silent = true })
  end,
}
