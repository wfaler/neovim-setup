local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",
        "python",
        "go",
        "bash",
        "yaml",
        "toml",
        "terraform",
        "dockerfile",
        "scala",
        "rust",
        "templ",
        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "vue",
        -- low level
        "c",
        "rust",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls", -- go
        "templ", -- templ
        "goimports", -- go
        "pyright", -- python
        "ruff",
        "mypy",
        "black",
        "terraform-ls", -- terraform
        "tflint",
        "typescript-language-server", -- typescript
        "vue-language-server",
        "prettier",
        "html-lsp",
        "htmx-lsp",
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
    ft = {"go", "python", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue"},
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
    "scalameta/nvim-metals",
    ft = {"scala", "sbt"},
  },
  {
    "nvim-neotest/neotest",
    ft = {"go", "python", "scala", "javascript", "typescript", "javascriptreact", "typescriptreact", "rust"},
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-go",
      "nvim-neotest/neotest-python",
      "stevanmilic/neotest-scala",
      "nvim-neotest/neotest-jest",
      "marilari88/neotest-vitest",
      -- "rouge8/neotest-rust",
    },
    config = function()
      require "custom.configs.neotest"
    end,
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'saecki/crates.nvim',
    tag = 'stable',
    config = function()
        require('crates').setup()
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}

return plugins
