return {
  repo = 'posva/vim-vue',
  on_ft = { 'vue' },
  lua_add = [[
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'vue',
      command = 'syntax sync fromstart',
    })
  ]],
}
