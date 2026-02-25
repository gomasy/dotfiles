vim.loader.enable()

-- Use ',' as the leader key
vim.g.mapleader = ','

require('config.options')
require('config.keymaps')
require('config.lazy')

local local_config = vim.fn.stdpath('config') .. '/local.lua'
if vim.fn.filereadable(local_config) == 1 then
  dofile(local_config)
end
