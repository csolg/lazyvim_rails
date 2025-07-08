return {
  'nvim-lualine/lualine.nvim',
  event = 'VeryLazy',
  opts = function(_, opts)
    -- Language
    table.insert(opts.sections.lualine_x, function()
      local km = { 'En', 'Ru' }
      return km[vim.o.iminsert + 1]
    end)

    -- Codeium
    opts.sections.lualine_z = {
      function() return require('codeium.virtual_text').status_string() end,
    }
  end,
}
