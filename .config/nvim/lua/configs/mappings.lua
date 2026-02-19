local function toggle(name)
  vim.cmd('set ' .. name .. '!')
  local val = vim.api.nvim_get_option_value(name, {})
  local state = val and 'true' or 'false'
  vim.api.nvim_echo({ { '*** Toggled ' .. name .. ' to ' .. state .. ' ***', 'Title' } }, false, {})
end

-- Common settings
vim.keymap.set('n', '<Leader>r', function() require('vimrc').reload() end, { silent = true })
vim.keymap.set('n', '<ESC><ESC>', ':noh<CR>', { silent = true })
vim.keymap.set('n', '<C-n>', ':new<CR>', { silent = true })
vim.keymap.set('n', '<C-w>h', ':sp<CR>', { silent = true })
vim.keymap.set('n', '<C-w>v', ':vsp<CR>', { silent = true })
vim.keymap.set('n', '<S-n>', ':tabnew<CR>', { silent = true })
vim.keymap.set('n', '<S-TAB>', ':tabp<CR>', { silent = true })
vim.keymap.set('n', '<TAB>', ':tabn<CR>', { silent = true })
vim.keymap.set('n', '<C-w>oh', ':sp<Space>')
vim.keymap.set('n', '<C-w>ov', ':vsp<Space>')
vim.keymap.set('n', '<C-o>', ':o<Space>')

-- Cursor settings
vim.keymap.set({ 'n', 'v', 'o' }, 'j', 'gj')
vim.keymap.set({ 'n', 'v', 'o' }, 'k', 'gk')
vim.keymap.set({ 'n', 'v', 'o' }, '<S-y>', 'y$')
vim.keymap.set({ 'n', 'v', 'o' }, '<S-h>', '^')
vim.keymap.set({ 'n', 'v', 'o' }, '<S-j>', '}')
vim.keymap.set({ 'n', 'v', 'o' }, '<S-k>', '{')
vim.keymap.set({ 'n', 'v', 'o' }, '<S-l>', '$')

-- Disable confusing keys
vim.keymap.set('n', 'ZZ', '<Nop>')
vim.keymap.set('n', 'ZQ', '<Nop>')
vim.keymap.set('n', 'Q', '<Nop>')

-- Disable arrow keys in v, o, i modes
vim.keymap.set({ 'v', 'o' }, '<Left>', '<Nop>')
vim.keymap.set({ 'v', 'o' }, '<Down>', '<Nop>')
vim.keymap.set({ 'v', 'o' }, '<Up>', '<Nop>')
vim.keymap.set({ 'v', 'o' }, '<Right>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')

-- Window settings (n mode arrow keys)
vim.keymap.set('n', '<Left>', '<C-w>h')
vim.keymap.set('n', '<Down>', '<C-w>j')
vim.keymap.set('n', '<Up>', '<C-w>k')
vim.keymap.set('n', '<Right>', '<C-w>l')
vim.keymap.set('n', '<S-Up>', '<C-w>+')
vim.keymap.set('n', '<S-Down>', '<C-w>-')
vim.keymap.set('n', '<S-Left>', '<C-w><')
vim.keymap.set('n', '<S-Right>', '<C-w>>')

-- Toggle options
vim.keymap.set('n', '<Leader>g', function() toggle('termguicolors') end, { silent = true })
vim.keymap.set('n', '<Leader>n', function() toggle('relativenumber') end, { silent = true })
vim.keymap.set('n', '<Leader>t', function() toggle('expandtab') end, { silent = true })
vim.keymap.set('n', '<Leader>w', function() toggle('wrap') end, { silent = true })
