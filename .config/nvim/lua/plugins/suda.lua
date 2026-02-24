return {
  'lambdalisue/suda.vim',
  config = function()
    vim.keymap.set('n', '<Leader>su', '<cmd>w suda://%<CR>', { silent = true })
  end,
}
