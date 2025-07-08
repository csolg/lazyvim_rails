return {
  'tpope/vim-rails',
  lazy = false,
  config = function()
    vim.cmd([[
      command AC :execute "e " . eval('rails#buffer().alternate()')
    ]])
  end,
}
