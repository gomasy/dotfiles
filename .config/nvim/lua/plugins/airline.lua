return {
  repo = 'vim-airline/vim-airline',
  lua_add = [[
    vim.g.airline_powerline_fonts = 1
    vim.g['airline#extensions#tabline#enabled'] = 1

    if not vim.g.airline_symbols then
      vim.g.airline_symbols = {}
    end

    -- unicode symbols
    vim.g.airline_left_sep = '»'
    vim.g.airline_left_sep = '▶'
    vim.g.airline_right_sep = '«'
    vim.g.airline_right_sep = '◀'
    do
      local s = vim.g.airline_symbols or {}
      s.linenr = '␊'
      s.linenr = '␤'
      s.linenr = '¶'
      s.branch = '⎇'
      s.paste = 'ρ'
      s.paste = 'Þ'
      s.paste = '∥'
      s.whitespace = 'Ξ'
      vim.g.airline_symbols = s
    end

    -- airline symbols
    vim.g.airline_left_sep = ''
    vim.g.airline_left_alt_sep = ''
    vim.g.airline_right_sep = ''
    vim.g.airline_right_alt_sep = ''
    do
      local s = vim.g.airline_symbols or {}
      s.branch = ''
      s.readonly = ''
      s.linenr = ''
      vim.g.airline_symbols = s
    end
  ]],
}
