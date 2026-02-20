vim.loader.enable()

-- Use ',' as the leader key
vim.g.mapleader = ','

require('config.options')
require('config.keymaps')
require('config.lazy')
