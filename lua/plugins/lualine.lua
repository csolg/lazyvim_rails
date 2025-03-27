return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = function(_, opts)
    table.insert(opts.sections.lualine_x, function()
      local km = { 'En', 'Ru' }
      return km[vim.o.iminsert + 1]
    end)
  end,
}
