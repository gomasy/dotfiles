return {
  'posva/vim-vue',
  ft = { 'vue' },
  init = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'vue',
      command = 'syntax sync fromstart',
    })
  end,
}
