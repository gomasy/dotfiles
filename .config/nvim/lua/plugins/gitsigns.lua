return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    on_attach = function(bufnr)
      local gs = require('gitsigns')
      local opts = function(desc)
        return { buffer = bufnr, desc = desc }
      end

      local function nav(key, dir, desc)
        vim.keymap.set('n', key, function()
          if vim.wo.diff then return key end
          vim.schedule(function() gs.nav_hunk(dir) end)
          return '<Ignore>'
        end, { buffer = bufnr, expr = true, desc = desc })
      end
      nav(']c', 'next', 'Next hunk')
      nav('[c', 'prev', 'Prev hunk')

      vim.keymap.set('n', '<Leader>hs', gs.stage_hunk, opts('Stage hunk'))
      vim.keymap.set('n', '<Leader>hr', gs.reset_hunk, opts('Reset hunk'))
      vim.keymap.set('n', '<Leader>hp', gs.preview_hunk, opts('Preview hunk'))
      vim.keymap.set('n', '<Leader>hb', function() gs.blame_line({ full = true }) end, opts('Blame line'))
      vim.keymap.set('n', '<Leader>hd', gs.diffthis, opts('Diff this'))
    end,
  },
}
