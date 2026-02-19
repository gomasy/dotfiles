vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')

vim.api.nvim_create_augroup('MyAutoCmd', { clear = true })

vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8', 'cp932', 'sjis', 'euc-jp' }
vim.opt.switchbuf = { 'useopen', 'usetab', 'newtab' }
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.nrformats:remove('octal')
vim.opt.virtualedit = 'block'
vim.opt.mouse = 'a'
vim.opt.visualbell = true
vim.opt.wildignorecase = true
vim.opt.wildmenu = true
vim.opt.tildeop = true
vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.lazyredraw = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.startofline = false
vim.opt.showmode = false
vim.opt.showcmd = true
vim.opt.title = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', eol = '↲', extends = '❯', precedes = '❮' }
vim.opt.scrolloff = 5
vim.opt.showtabline = 2
vim.opt.laststatus = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.history = 1000
vim.opt.showmatch = true
vim.opt.matchpairs = { '(:)', '{:}', '[:]', '<:>' }
vim.opt.matchtime = 3
vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.winblend = 30
vim.opt.pumblend = 30
vim.opt.clipboard:append('unnamedplus')
