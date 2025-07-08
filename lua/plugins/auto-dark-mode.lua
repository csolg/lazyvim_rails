return {
  'f-person/auto-dark-mode.nvim',
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.cmd('set background=dark')
      vim.cmd('colorscheme catppuccin')
    end,
    set_light_mode = function()
      vim.cmd('set background=light')
      vim.cmd('colorscheme catppuccin')
    end,
  },
}
