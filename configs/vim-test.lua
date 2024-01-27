vim.cmd [[
  " Use nearest test function or class for Python and Go
  let test#python#runner = 'pytest'  " or 'unittest' or another supported framework
  let test#go#runner = 'gotest'     " or 'richgo' or another supported framework

  " Optional: Set a strategy for running tests
  " For example, to run tests in a new tab:
  let test#strategy = 'neovim'
]]

-- Optional: Keybindings for vim-test
-- You can set keybindings to run tests quickly
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>tn', ':TestNearest<CR>', opts)
map('n', '<leader>tf', ':TestFile<CR>', opts)
map('n', '<leader>ts', ':TestSuite<CR>', opts)
map('n', '<leader>tl', ':TestLast<CR>', opts)
map('n', '<leader>tg', ':TestVisit<CR>', opts)
