return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    keys = {
      { "<leader>m", "<Cmd>Mason<Cr>" }
    },

    config = function()
      require("mason").setup({})
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = true,
    opts = {
      ensure_installed = {
        "lua_ls",
      }
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end
  }
}
