-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
-- local cmd = vim.cmd

opt.langmap =
  'ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz'
opt.linebreak = true
opt.iskeyword:append('-') -- consider string-string as whole word
-- spelling
opt.spelllang = { 'en', 'ru' } -- Словари рус eng

vim.opt.keymap = 'russian-jcukenwin'
-- Startup language is English
vim.opt.iminsert = 0
-- Search language
vim.opt.imsearch = 0
-- Spellcheck
vim.opt.spelllang = 'en_us,ru_ru,ru_yo'
-- Switch keymap — not Ctrl-^ but Ctrl-L
vim.keymap.set('i', '<C-L>', '<C-^>', { noremap = true, desc = 'Switch Input Language' })
opt.spell = true
opt.spellsuggest = { 'best', 9 }

-- This option can take more lines when replaced selected line block
opt.virtualedit = ''
vim.g.lazyvim_ruby_lsp = 'solargraph'
vim.g.lazyvim_ruby_formatter = 'rubocop'

-- Global Border Settings
-- cmd('highlight CustomBorder guifg=#FFFFFF guibg=NONE') -- Define a custom border style
-- cmd('highlight! link FloatBorder CustomBorder') -- Link FloatBorder to CustomBorder
-- cmd('highlight! link VertSplit CustomBorder') -- Link VertSplit to CustomBorder
-- cmd('highlight! link PmenuBorder CustomBorder') -- Link PmenuBorder to CustomBorder
--
opt.guifont = 'SpaceMono Nerd Font:h16'

opt.relativenumber = false

-- wrapping
opt.wrap = true
opt.breakindent = true
opt.showbreak = string.rep(' ', 3) -- Make it so that long lines wrap smartly
opt.linebreak = true
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
