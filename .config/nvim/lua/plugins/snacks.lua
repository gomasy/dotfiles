local function pick(source)
  return function() Snacks.picker[source]() end
end

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
  },
  keys = {
    { '<C-p>', pick('files'), desc = 'Find files' },
    { '<Leader>fg', pick('grep'), desc = 'Live grep' },
    { '<Leader>fb', pick('buffers'), desc = 'Buffers' },
    { '<Leader>fh', pick('help'), desc = 'Help tags' },
    { '<Leader>fd', pick('diagnostics'), desc = 'Diagnostics' },
    { 'df', terminal('float', 1), desc = 'Float terminal' },
    { 'dv', terminal('right', 2), desc = 'Vertical terminal' },
    { 'dh', terminal('bottom', 3), desc = 'Horizontal terminal' },
  },
}
