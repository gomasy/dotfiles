vim.api.nvim_create_augroup('MyAutoCmd', { clear = true })

vim.opt.breakindent = true
vim.opt.clipboard:append('unnamedplus')
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fileencodings = { 'utf-8', 'cp932', 'sjis', 'euc-jp' }
vim.opt.ignorecase = true
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', eol = '↲', extends = '❯', precedes = '❮' }
vim.opt.matchpairs:append('<:>')
vim.opt.matchtime = 3
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.pumblend = 30
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 4
vim.opt.showmatch = true
vim.opt.showmode = false
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.startofline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.switchbuf = { 'useopen', 'usetab', 'newtab' }
vim.opt.tabstop = 4
vim.opt.tildeop = true
vim.opt.title = true
vim.opt.virtualedit = 'block'
vim.opt.wildignorecase = true
vim.opt.winblend = 30
vim.opt.writebackup = false
