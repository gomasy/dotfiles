return {
  'echasnovski/mini.trailspace',
  version = '*',
  config = function()
    require('mini.trailspace').setup()
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = '*',
      callback = function()
        vim.hl.set('MiniTrailspace', { bg = '#b71c1c' })
      end,
    })
  end,
}
