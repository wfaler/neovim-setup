local M = {}
vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "*.templ",
        command = "set filetype=templ",
})
-- invoke prettier on save for js, ts etc files
vim.api.nvim_create_user_command('Prettier', function()
    vim.cmd('%!prettier --stdin-filepath ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)))
end, {})

vim.api.nvim_create_augroup("fmt", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
    group = "fmt",
    pattern = {"*.js", "*.ts", "*.jsx", "*.tsx", "*.vue"},
    command = "Prettier",
})

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
