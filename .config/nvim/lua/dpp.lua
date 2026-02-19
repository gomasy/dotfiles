local function plugin_dir()
  return vim.fn.expand('~/.cache/dpp')
end

local function setup_dpp()
  local base_dir = plugin_dir()
  local repos = {
    'Shougo/dpp.vim',
    'vim-denops/denops.vim',
    'Shougo/dpp-ext-installer',
    'Shougo/dpp-ext-lazy',
    'Shougo/dpp-protocol-git',
  }

  for _, repo in ipairs(repos) do
    local dir = base_dir .. '/repos/github.com/' .. repo
    if vim.fn.isdirectory(dir) == 0 then
      vim.fn.system('git clone --depth 1 https://github.com/' .. repo .. ' ' .. vim.fn.shellescape(dir))
    end
    vim.opt.runtimepath:prepend(dir)
  end
end

local function after_make_state()
  vim.fn['dpp#min#load_state'](vim.g.dpp_dir)
  vim.fn['dpp#async_ext_action']('installer', 'install')
end

local function load_dpp()
  if vim.fn['dpp#min#load_state'](vim.g.dpp_dir) ~= 0 then
    vim.api.nvim_create_autocmd('User', {
      pattern = 'DenopsReady',
      once = true,
      callback = function()
        vim.fn['dpp#make_state'](vim.g.dpp_dir, vim.fn.expand('~/.config/nvim/dpp.ts'))
      end,
    })
    vim.api.nvim_create_autocmd('User', {
      pattern = 'Dpp:makeStatePost',
      once = true,
      callback = after_make_state,
    })
  end
end

vim.g.dpp_dir = plugin_dir()
vim.g.repo_dir = vim.g.dpp_dir .. '/repos/github.com'
vim.g.mapleader = ','

setup_dpp()
load_dpp()
