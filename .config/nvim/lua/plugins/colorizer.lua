return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  config = function()
    require('colorizer').setup({
      filetypes = { 'css', 'html', 'scss' },
    })
  end,
}
