return {
  'coder/claudecode.nvim',
  dependencies = { 'folke/snacks.nvim' },
  config = true,
  keys = {
    { '<Leader>cc', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
    { '<Leader>cf', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
    { '<Leader>cs', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
    { '<Leader>cb', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer to Claude' },
  },
}
