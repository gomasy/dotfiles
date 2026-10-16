return {
  'mitch1000/backpack.nvim',
  priority = 1000,
  config = function()
    require('backpack').setup({
      overrides = function()
        return { MiniTrailspace = { bg = '#b71c1c' } }
      end,
    })
    vim.cmd.colorscheme('backpack')
  end,
}
