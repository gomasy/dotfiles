return {
  repo = 'lambdalisue/suda.vim',
  lua_add = [[
    vim.keymap.set('n', '<Leader>su', ':w suda://%<CR>', { silent = true })
  ]],
}
