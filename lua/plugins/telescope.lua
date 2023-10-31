return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.4',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = "Telescope",
  keys = {
    { "<leader>ff", "<Cmd>Telescope find_files<Cr>", desc = "Files" },
    { "<leader>fw", "<Cmd>Telescope live_grep<Cr>",  desc = "Recent" },
    { "<leader>fr", "<Cmd>Telescope oldfiles<Cr>",   desc = "Recent" },
  },
  opts = {
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      mappings = {
        i = {
          ["<C-d>"] = function(...)
            return require("telescope.actions").preview_scrolling_down(...)
          end,
          ["<C-u>"] = function(...)
            return require("telescope.actions").preview_scrolling_up(...)
          end,
        },
        n = {
          ["q"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
      },
      file_ignore_patterns = {
        "node_modules"
      }
    },
  }
}
