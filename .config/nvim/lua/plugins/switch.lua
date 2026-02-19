return {
  repo = 'AndrewRadev/switch.vim',
  lua_add = [[
    vim.keymap.set('n', 't', ':Switch<CR>', { silent = true })
  ]],
}
