return {
  'AndrewRadev/switch.vim',
  version = '*',
  config = function()
    vim.keymap.set('n', 't', '<cmd>Switch<CR>', { silent = true })
  end,
}
