return {
  'lambdalisue/suda.vim',
  version = '*',
  config = function()
    vim.keymap.set('n', '<Leader>su', '<cmd>w suda://%<CR>', { silent = true })
  end,
}
