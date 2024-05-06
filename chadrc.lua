local M = {}
vim.api.nvim_create_autocmd("BufWinEnter", {
        pattern = "*.templ",
        command = "set filetype=templ",
})
-- invoke prettier on save for js, ts etc files

vim.api.nvim_create_user_command('Prettier', function()
    local cursor_pos = vim.api.nvim_win_get_cursor(0)  -- Save cursor position
    vim.cmd('%!prettier --stdin-filepath ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)))
    vim.api.nvim_win_set_cursor(0, cursor_pos)  -- Restore cursor position
end, {})

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
