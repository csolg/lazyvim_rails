return {
  {
    'nvim-telescope/telescope.nvim',
    opts = {
      -- ... your telescope config
      defaults = {
        -- ... your other defaults
        cache_picker = {
          -- we need to have a picker history we can work with
          num_pickers = 100,
        },
        mapppings = {
          i = {
            ['<C-,>'] = function()
              require('telescope-picker-history-action').prev_picker()
            end,
            ['<C-.>'] = function()
              require('telescope-picker-history-action').next_picker()
            end,
          },
        },
      },
    },
    keys = {
      -- disable the keymap to grep files
      -- {"<leader>/", false},
      -- change a keymap
      -- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      { '<leader>ft', '<cmd>ToggleTerm direction=horizontal<cr>', desc = 'Open Terminal' },
      -- add a keymap to browse plugin files
      {
        '<leader>fp',
        function()
          require('telescope.builtin').find_files({ cwd = require('lazy.core.config').options.root })
        end,
        desc = 'Find Plugin File',
      },
    },
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require('telescope').setup({
        defaults = {
          --layout_config = {
          --vertical = { width = 0.5 },
          path_display = { 'filename_first' },
          --},
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({}),
          },
        },
      })
      require('telescope').load_extension('ui-select')
    end,
  },
  {
    'prochri/telescope-picker-history-action',
    opts = true,
  },

  --
  -- {
  --   'telescope.nvim',
  --   dependencies = {
  --     'nvim-telescope/telescope-smart-history.nvim',
  --     config = function()
  --       require('telescope').load_extension('smart_history')
  --     end,
  --   },
  -- },
}
