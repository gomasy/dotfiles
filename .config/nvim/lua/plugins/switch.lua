return {
  'AndrewRadev/switch.vim',
  config = function()
    vim.keymap.set('n', 't', '<cmd>Switch<CR>', { silent = true })
  end,
}
