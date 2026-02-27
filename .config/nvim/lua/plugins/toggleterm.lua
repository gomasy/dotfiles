return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { 'df', '<cmd>ToggleTerm direction=float<CR>', desc = 'Float terminal' },
    { 'dv', '<cmd>ToggleTerm direction=vertical<CR>', desc = 'Vertical terminal' },
    { 'dh', '<cmd>ToggleTerm direction=horizontal<CR>', desc = 'Horizontal terminal' },
  },
  opts = {},
}
