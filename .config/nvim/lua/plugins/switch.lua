return {
  'AndrewRadev/switch.vim',
  config = function()
    vim.keymap.set('n', 't', ':Switch<CR>', { silent = true })
  end,
}
