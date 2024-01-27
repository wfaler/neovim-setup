local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

-- Golang config
lspconfig.gopls.setup{
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl", "tmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settins = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
        assign = true,
        bools = true,
        defers = true,
        deprecated = true,
        errorsas = true,
        loopclosure = true,
        shadow = true,
        unusedresult = true,
      }
    },
  },
}
-- Python config
lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"}
})
-- Terraform
lspconfig.terraformls.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.tflint.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
})
lspconfig.metals.setup({
  -- Metals-specific configuration
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    showImplicitArguments = true,
    showInferredType = true,
    -- other Metals settings
  }
})
