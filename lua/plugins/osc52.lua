return {
  'ojroques/nvim-osc52',
  config = function()
    require('osc52').setup()
    local copy = function(lines, _)
      require('osc52').copy(table.concat(lines, '\n'))
    end
    local paste = function()
      return { vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('') }
    end
    vim.g.clipboard = {
      name = 'osc52',
      copy = { ['+'] = copy, ['*'] = copy },
      paste = { ['+'] = paste, ['*'] = paste },
    }
    vim.api.nvim_create_autocmd('TextYankPost', {
      callback = function()
        vim.highlight.on_yank()
      end,
    })
  end,
  keys = {
    {
      '<leader>y',
      function()
        require('osc52').copy_operator()
      end,
      expr = true,
      desc = 'copy selection to system clipboard (normal mode)',
    },
    {
      '<leader>Y',
      '<leader>y_',
      remap = true,
      desc = 'copy current line into system clipboard (normal mode)',
    },
    {
      mode = 'v',
      '<leader>y',
      function()
        require('osc52').copy_visual()
      end,
      desc = 'copy selection to system clipboard (visual mode)',
    },
  },
}
