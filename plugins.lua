local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls", -- go
        "pyright", -- python
        "ruff",
        "mypy",
        "black",
        "terraform-ls", -- terraform
        "tflint",
        "typescript-language-server", -- typescript
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {"github/copilot.vim",
    lazy = false,
    config = function()
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;
      vim.g.copilot_tab_fallback = "";
    end
  },
  {
    "vim-test/vim-test",
    lazy = false,
    config = function()
      require "custom.configs.vim-test"
    end,
  },
  {
    "scalameta/nvim-metals",
    ft = {"scala", "sbt"},
  }
}

return plugins
