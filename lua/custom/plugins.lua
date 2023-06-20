local data = require "custom.configs.data"

local plugins = {

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    lazy = false,
  },

  { "Exafunction/codeium.vim", lazy = false },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = data.lsp_servers,
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = data.treesitter_servers,
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
      { "williamboman/mason-lspconfig.nvim" },
      { "folke/neodev.nvim", opts = {} },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
