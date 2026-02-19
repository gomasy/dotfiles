return {
  repo = 'bronson/vim-trailing-whitespace',
  lua_add = [[
    vim.g.extra_whitespace_ignored_filetypes = { 'help', 'nerdtree' }
    vim.api.nvim_create_autocmd('ColorScheme', {
      pattern = '*',
      command = 'highlight ExtraWhitespace ctermbg=red guibg=#b71c1c',
    })
  ]],
}
