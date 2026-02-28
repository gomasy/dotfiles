return {
  'nvim-tree/nvim-tree.lua',
  keys = {
    { '<C-f>', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file tree' },
  },
  opts = {
    view = {
      width = vim.api.nvim_win_get_width(0) < 160 and 30 or 40,
    },
    filters = {
      dotfiles = false,
    },
  },
}
