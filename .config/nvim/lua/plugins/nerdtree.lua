return {
  'scrooloose/nerdtree',
  init = function()
    vim.keymap.set('n', '<C-f>', ':NERDTreeToggle<CR>', { silent = true })
    vim.api.nvim_create_autocmd('BufEnter', {
      pattern = '*',
      command = "if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif",
    })
    vim.g.NERDTreeShowHidden = 1
    if vim.fn.winwidth(0) < 128 then
      vim.g.NERDTreeWinSize = 25
    end
  end,
}
