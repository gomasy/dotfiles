vim.api.nvim_create_augroup('MyAutoCmd', { clear = true })

vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8', 'cp932', 'sjis', 'euc-jp' }
vim.opt.switchbuf = { 'useopen', 'usetab', 'newtab' }
vim.opt.virtualedit = 'block'
vim.opt.mouse = 'a'
vim.opt.wildignorecase = true
vim.opt.tildeop = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.startofline = false
vim.opt.showmode = false
vim.opt.title = true
vim.opt.number = true
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', eol = '↲', extends = '❯', precedes = '❮' }
vim.opt.scrolloff = 5
vim.opt.showtabline = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.showmatch = true
vim.opt.matchpairs:append('<:>')
vim.opt.matchtime = 3
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.winblend = 30
vim.opt.pumblend = 30
vim.opt.clipboard:append('unnamedplus')
