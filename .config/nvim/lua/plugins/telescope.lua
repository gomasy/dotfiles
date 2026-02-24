return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')
    telescope.setup({
      defaults = {
        file_ignore_patterns = { '.git/', '%.keep$', '%.gitkeep$' },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
    })
    vim.keymap.set('n', '<C-p>', builtin.find_files, { silent = true })
  end,
}
