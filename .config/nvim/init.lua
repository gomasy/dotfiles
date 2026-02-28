-- Use ',' as the leader key
vim.g.mapleader = ','

require('config.options')
require('config.keymaps')
require('config.lazy')

local local_config = vim.fn.stdpath('config') .. '/local.lua'
if vim.uv.fs_stat(local_config) then
  dofile(local_config)
end
