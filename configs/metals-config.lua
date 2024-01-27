local config_fn = function(self, metals_config)
  local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    pattern = self.ft,
    callback = function()
    require("metals").initialize_or_attach(metals_config)
  end,
  group = nvim_metals_group,
  })
end

return config_fn
