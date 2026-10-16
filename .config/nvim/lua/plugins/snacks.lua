local function terminal(position, count)
  return function()
    Snacks.terminal.toggle(nil, { count = count, win = { position = position } })
  end
end

return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    indent = {},
    picker = {
      sources = {
        files = {
          hidden = true,
          exclude = { '*.keep', '*.gitkeep' },
        },
      },
    },
    terminal = {},
  },
  keys = {
    { '<C-p>', function() Snacks.picker.files() end, desc = 'Find files' },
    { '<Leader>fg', function() Snacks.picker.grep() end, desc = 'Live grep' },
    { '<Leader>fb', function() Snacks.picker.buffers() end, desc = 'Buffers' },
    { '<Leader>fh', function() Snacks.picker.help() end, desc = 'Help tags' },
    { '<Leader>fd', function() Snacks.picker.diagnostics() end, desc = 'Diagnostics' },
    { 'df', terminal('float', 1), desc = 'Float terminal' },
    { 'dv', terminal('right', 2), desc = 'Vertical terminal' },
    { 'dh', terminal('bottom', 3), desc = 'Horizontal terminal' },
  },
}
