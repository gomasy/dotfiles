return {
  'bronson/vim-trailing-whitespace',
  config = function()
    vim.g.extra_whitespace_ignored_filetypes = { 'help', 'nerdtree' }
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = '*',
      command = 'highlight ExtraWhitespace ctermbg=red guibg=#b71c1c',
    })
  end,
}
