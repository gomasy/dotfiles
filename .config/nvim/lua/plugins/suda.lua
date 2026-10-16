return {
  'lambdalisue/vim-suda',
  version = '*',
  config = function()
    vim.keymap.set('n', '<Leader>su', '<cmd>w suda://%<CR>', { silent = true })
  end,
}
