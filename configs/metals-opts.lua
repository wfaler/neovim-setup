local opts = function()
  local metals_config = require("metals").bare_config()

      -- Example of settings
  metals_config.settings = {
     showImplicitArguments = true,
     excludedPackages = { "akka.actor.typed.javadsl", "com.github.swagger.akka.javadsl" },
  }

      -- *READ THIS*
      -- I *highly* recommend setting statusBarProvider to true, however if you do,
      -- you *have* to have a setting to display this in your statusline or else
      -- you'll not see any messages from metals. There is more info in the help
      -- docs about this
      -- metals_config.init_options.statusBarProvider = "on"

      -- Example if you are using cmp how to make sure the correct capabilities for snippets are set
  metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }


  metals_config.on_attach = function(client, bufnr)
--    //require("metals").setup_dap()
    print("init_options")
        -- LSP mappings
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "K", vim.lsp.buf.hover)
    map("n", "gi", vim.lsp.buf.implementation)
    map("n", "gr", vim.lsp.buf.references)
    map("n", "gds", vim.lsp.buf.document_symbol)
    map("n", "gws", vim.lsp.buf.workspace_symbol)
    map("n", "<leader>cl", vim.lsp.codelens.run)
    map("n", "<leader>sh", vim.lsp.buf.signature_help)
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("n", "<leader>f", vim.lsp.buf.format)
    map("n", "<leader>ca", vim.lsp.buf.code_action)

    map("n", "<leader>ws", function()
      require("metals").hover_worksheet()
    end)

        -- all workspace diagnostics
    map("n", "<leader>aa", vim.diagnostic.setqflist)

        -- all workspace errors
    map("n", "<leader>ae", function()
      vim.diagnostic.setqflist({ severity = "E" })
    end)

        -- all workspace warnings
    map("n", "<leader>aw", function()
      vim.diagnostic.setqflist({ severity = "W" })
    end)

        -- buffer diagnostics only
    map("n", "<leader>d", vim.diagnostic.setloclist)

    map("n", "[c", function()
      vim.diagnostic.goto_prev({ wrap = false })
    end)

    map("n", "]c", function()
      vim.diagnostic.goto_next({ wrap = false })
    end)

        -- Example mappings for usage with nvim-dap. If you don't use that, you can
        -- skip these
    map("n", "<leader>dc", function()
      require("dap").continue()
    end)

    map("n", "<leader>dr", function()
      require("dap").repl.toggle()
    end)

    map("n", "<leader>dK", function()
      require("dap.ui.widgets").hover()
    end)

    map("n", "<leader>dt", function()
      require("dap").toggle_breakpoint()
    end)

    map("n", "<leader>dso", function()
      require("dap").step_over()
    end)

    map("n", "<leader>dsi", function()
      require("dap").step_into()
    end)

    map("n", "<leader>dl", function()
      require("dap").run_last()
    end)
  end

  return metals_config
 end

return opts
