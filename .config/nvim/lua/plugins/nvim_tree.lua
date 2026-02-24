return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup({
      view = {
        width = vim.fn.winwidth(0) < 160 and 30 or 40,
      },
      filters = {
        dotfiles = false,
      },
    })
    vim.keymap.set('n', '<C-f>', '<cmd>NvimTreeToggle<CR>', { silent = true })
  end,
}
