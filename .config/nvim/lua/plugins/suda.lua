return {
  'lambdalisue/suda.vim',
  config = function()
    vim.keymap.set('n', '<Leader>su', ':w suda://%<CR>', { silent = true })
  end,
}
