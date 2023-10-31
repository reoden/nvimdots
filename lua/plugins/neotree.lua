return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",

  keys = {
    { "<Leader>e", "<Cmd>Neotree toggle<Cr>" },
  },

  opts = {
    window = {
      width = 32,
      mappings = {
        ["<space>"] = "none",
        ["o"] = "open",
      }
    },

    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "",
        expander_expanded = "",
        expander_highlight = "NeoTreeExpander",
      },
    },
  }
}
