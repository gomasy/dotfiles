return {
  'tomasr/molokai',
  priority = 1000,
  lazy = false,
  config = function()
    vim.g.molokai_original = 1
    vim.g.rehash256 = 1
    vim.cmd('colorscheme molokai')
    vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 239, bg = '#545050' })
  end,
}
