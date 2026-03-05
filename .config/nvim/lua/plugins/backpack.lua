return {
  'mitch1000/backpack.nvim',
  priority = 1000,
  config = function()
    require('backpack').setup()
    vim.cmd.colorscheme('backpack')
  end,
}
