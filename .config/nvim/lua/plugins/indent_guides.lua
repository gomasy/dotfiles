return {
  'nathanaelkane/vim-indent-guides',
  init = function()
    vim.g.indent_guides_enable_on_vim_startup = 1
    vim.g.indent_guides_start_level = 2
    vim.g.indent_guides_exclude_filetypes = { 'help', 'nerdtree' }
  end,
}
