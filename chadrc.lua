local M = {}
vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "*.templ",
        command = "set filetype=templ",
})

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
