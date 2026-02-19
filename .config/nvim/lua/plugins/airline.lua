return {
  repo = 'vim-airline/vim-airline',
  lua_add = [[
    vim.g.airline_powerline_fonts = 1
    vim.g['airline#extensions#tabline#enabled'] = 1
    vim.g.airline_left_sep = ''
    vim.g.airline_left_alt_sep = ''
    vim.g.airline_right_sep = ''
    vim.g.airline_right_alt_sep = ''
    vim.g.airline_symbols = {
      branch = '',
      readonly = '',
      linenr = '',
      paste = '∥',
      whitespace = 'Ξ',
    }
  ]],
}
