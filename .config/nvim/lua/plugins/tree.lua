return {
  'nvim-tree/nvim-tree.lua',
  keys = {
    { '<C-f>', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file tree' },
  },
  opts = {
    view = {
      width = vim.fn.winwidth(0) < 160 and 30 or 40,
    },
    filters = {
      dotfiles = false,
    },
  },
}
