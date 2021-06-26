-- Global variables or functions
Cmd = vim.api.nvim_command
Execute = vim.api.nvim_exec
Fn = vim.fn

local k = require'util._keymap'
Map_n = k.nnoremap -- Map on normal mode
Map_i = k.inoremap -- Map on insert mode
Map_v = k.vnoremap -- Map on visual mode
Map_c = k.cnoremap -- Map on command mode
Map_t = k.tnoremap -- Map on terminal mode

-- Disable builtin plugin that I don't use
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_matchparen        = 1
vim.g.loaded_spec              = 1

require('generals._appearance')
require('generals._keymaps')
require('generals._settings')
require('plugins')
