-- Disable builtin plugin that I don't use
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.did_load_filetypes = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_matchparen = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_matchit = 1
vim.g.loaded_netrw = 1
vim.g.loaded_spec = 1
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.cmd [[runtime! ftdetect/*.vim]]
vim.cmd [[runtime! ftdetect/*.lua]]

local k = require 'usr_conf.utils.keymapper'
Map_n = k.nnoremap -- Map on normal mode
Map_i = k.inoremap -- Map on insert mode
Map_v = k.vnoremap -- Map on visual mode
Map_c = k.cnoremap -- Map on command mode
Map_t = k.tnoremap -- Map on terminal mode

require 'usr_conf.keymaps'
require 'usr_conf.settings'

---PLUGINS
local p = require('usr_conf.plugins').dep
local u = require 'usr_conf.utils'

p.bootstrap()
p.load {
  'doom-one',
  'filetype',
  'fix cursor-hold',
}

p.defer_load({
  'bufferline',
  'galaxyline',
  'smoothie',
  'treesitter',
}, 500)

p.defer_load({
  'autopairs(lua)',
  'comment',
  'crease',
  'fern',
  'gitsigns',
  'hlslens',
  'sandwich',
  'sayonara',
  'sort-motion',
  'stabilize',
  'startuptimer',
  'targets',
  'telescope',
  u.add_affix('treesitter-', {
    'context',
  }),
  'word-motion',
  'yuck',
}, 1800)

p.defer_load({
  'markdown-preview',
  'parinfer(lua)',
  'scrollbar',
  'suda',
  u.add_affix('telescope-', {
    'frecency',
    'fzf-native',
  }),
  'terminal',
  'true-zen',
  'wilder',
}, 3000)
