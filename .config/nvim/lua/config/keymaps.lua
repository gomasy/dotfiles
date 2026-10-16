local function reload()
  vim.cmd.source(vim.env.MYVIMRC)
  vim.notify('Reloaded ' .. vim.env.MYVIMRC)
end

-- Common settings
vim.keymap.set('n', '<Leader>r', reload)
vim.keymap.set('n', '<ESC><ESC>', '<cmd>noh<CR>')
vim.keymap.set('n', '<C-n>', '<cmd>new<CR>')
vim.keymap.set('n', '<S-n>', '<cmd>tabnew<CR>')
vim.keymap.set('n', '<S-TAB>', '<cmd>tabp<CR>')
vim.keymap.set('n', '<TAB>', '<cmd>tabn<CR>')
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

-- Disable confusing keys and arrow keys outside normal mode
for _, key in ipairs({ 'ZZ', 'ZQ', 'Q' }) do
  vim.keymap.set('n', key, '<Nop>')
end
for _, key in ipairs({ '<Left>', '<Down>', '<Up>', '<Right>' }) do
  vim.keymap.set({ 'i', 'v', 'o' }, key, '<Nop>')
end

-- Window settings (n mode arrow keys)
for lhs, rhs in pairs({
  ['<Left>'] = '<C-w>h',
  ['<Down>'] = '<C-w>j',
  ['<Up>'] = '<C-w>k',
  ['<Right>'] = '<C-w>l',
  ['<S-Up>'] = '<C-w>+',
  ['<S-Down>'] = '<C-w>-',
  ['<S-Left>'] = '<C-w><',
  ['<S-Right>'] = '<C-w>>',
}) do
  vim.keymap.set('n', lhs, rhs)
end

-- Toggle options
for key, name in pairs({ g = 'termguicolors', n = 'relativenumber', t = 'expandtab', w = 'wrap' }) do
  vim.keymap.set('n', '<Leader>' .. key, function()
    vim.o[name] = not vim.o[name]
    vim.notify('Toggled ' .. name .. ' to ' .. tostring(vim.o[name]))
  end)
end
