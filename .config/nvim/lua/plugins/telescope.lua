return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = 'Telescope',
  keys = {
    { '<C-p>', '<cmd>Telescope find_files<CR>', desc = 'Find files' },
    { '<Leader>fg', '<cmd>Telescope live_grep<CR>', desc = 'Live grep' },
    { '<Leader>fb', '<cmd>Telescope buffers<CR>', desc = 'Buffers' },
    { '<Leader>fh', '<cmd>Telescope help_tags<CR>', desc = 'Help tags' },
    { '<Leader>fd', '<cmd>Telescope diagnostics<CR>', desc = 'Diagnostics' },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { '.git/', '%.keep$', '%.gitkeep$' },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
  },
}
