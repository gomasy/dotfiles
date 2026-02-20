return {
  'ctrlpvim/ctrlp.vim',
  init = function()
    vim.g.ctrlp_show_hidden = 1
    vim.g.ctrlp_custom_ignore = {
      dir = '.git',
      file = '\\v\\.(git)?keep$',
    }
  end,
}
