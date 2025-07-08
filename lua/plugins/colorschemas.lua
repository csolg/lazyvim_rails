return {
  -- add colorscheme
  { 'ellisonleao/gruvbox.nvim', lazy = true },
  { 'rebelot/kanagawa.nvim', lazy = true },
  { 'sainnhe/sonokai', lazy = true },
  -- { 'dracula/vim', lazy = true },

  {
    'LazyVim/LazyVim',
    opts = {
      -- colorscheme = 'gruvbox',
      -- ['gruvbox']
    },
    -- opts = function()
    --   -- load the colorscheme here
    --   vim.cmd([[colorscheme gruvbox]])
    --   vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
    -- end,
  },

  {
    'catppuccin/nvim',
    version = false,
    branch = 'main',
    opts = {
      transparent_background = true,
      snacks = false,
    },
  },
}
