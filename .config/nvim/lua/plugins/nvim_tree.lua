return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    require('nvim-tree').setup({
      view = {
        width = vim.fn.winwidth(0) < 128 and 25 or 30,
      },
      filters = {
        dotfiles = false,
      },
    })
    vim.keymap.set('n', '<C-f>', ':NvimTreeToggle<CR>', { silent = true })
  end,
}
