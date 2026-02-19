return {
  repo = 'tomasr/molokai',
  lua_add = [[
    vim.g.molokai_original = 1
    vim.g.rehash256 = 1
    vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 239, bg = '#545050' })
    vim.api.nvim_create_autocmd('VimEnter', {
      nested = true,
      callback = function()
        vim.cmd('colorscheme molokai')
      end,
    })
  ]],
}
