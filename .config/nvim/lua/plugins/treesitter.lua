return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local parsers = {
      'bash',
      'c',
      'css',
      'dockerfile',
      'html',
      'javascript',
      'json',
      'lua',
      'markdown',
      'markdown_inline',
      'nginx',
      'php',
      'query',
      'ruby',
      'typescript',
      'vim',
      'vimdoc',
      'vue',
      'yaml',
    }

    -- Synchronously install missing parsers on first run so they are
    -- available before ftplugins (e.g. ftplugin/lua.lua) enable treesitter
    local install_dir = require('nvim-treesitter.config').get_install_dir('parsers')
    local missing = vim.tbl_filter(function(p)
      return not vim.uv.fs_stat(vim.fs.joinpath(install_dir, p .. '.so'))
    end, parsers)
    if #missing > 0 then
      require('nvim-treesitter').install(missing):wait(300000)
    end

    vim.api.nvim_create_autocmd('FileType', {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}
