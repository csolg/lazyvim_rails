vim.opt.clipboard:append({ 'unnamed', 'unnamedplus' })

if vim.fn.getcwd() == '/' then vim.cmd('cd ~') end

-- bootstrap lazy.nvim, LazyVim and your plugins
require('config.lazy')
