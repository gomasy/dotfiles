return {
  'catgoose/nvim-colorizer.lua',
  ft = { 'css', 'html', 'scss' },
  config = function()
    require('colorizer').setup({
      filetypes = { 'css', 'html', 'scss' },
    })
  end,
}
