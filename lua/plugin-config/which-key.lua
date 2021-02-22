vim.cmd[[packadd! vim-which-key]]

local fn = vim.fn
local cmd = vim.cmd
local setmap = vim.api.nvim_set_keymap

-- Map leader to which_key
setmap('n', "<leader>", ":<c-u>WhichKey '<Space>'<CR>",  {noremap = true, silent = true})
setmap('v', "<leader>", ":<c-u>WhichKeyVisual '<Space>'<CR>",  {noremap = true, silent = true})

-- Guide popup appearance
-- use `popup` instead of `float_win`
vim.g.which_key_use_floating_win = 0
-- guide popup position
vim.g.which_key_position = 'botright'

-- Hide status line
cmd('au! FileType which_key')
cmd('autocmd  FileType which_key set laststatus=0 noshowmode noruler')
cmd('autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler')

vim.g.which_key_map = {
  c = 'Toggle conceal',
  n = 'Nnn file manager',
  y = 'Copy to clipboard',
  p = 'Paste from clipboard',
  s = 'Split horizontal(below)',
  v = 'Split vertical(right)',
  b = {
    name = '+buffer',
    b = 'Previously edited',
    x = 'Close',
    N = 'New',
    n = 'Next',
    p = 'Prev',
  },
  f = {
    name = '+fuzzy-finder',
    f = 'From filename',
    c = 'From context',
  },
  q = {
    name = '+quick-action',
    c = 'Colorizer',
    n = 'NerdTree',
    u = 'Undotree',
  },
  t = {
    name = '+terminal',
    h = 'Previous',
    l = 'Next',
    p = 'Previous',
    n = 'Next',
    N = 'New',
    t = 'Toggle',
  },
  w = {
    name = '+window',
    h = 'Move left',
    j = 'Move down',
    k = 'Move up',
    l = 'Move right',
    s = 'Split below',
    v = 'Split right',
    x = 'Close',
  },
  z = {
    name = '+zettelkasten',
    N = 'New neuron note',
    n = 'Next link',
    p = 'Previous link',
    f = 'Find/Create note',
    i = 'Insert note\'s id',
    b = 'Find all backlinks',
    t = 'Find all tags',
    s = 'Start server',
  }
}

cmd("let g:which_key_map.1 = 'Buffer-1'")
cmd("let g:which_key_map.2 = 'Buffer-2'")
cmd("let g:which_key_map.3 = 'Buffer-3'")
cmd("let g:which_key_map.4 = 'Buffer-4'")
cmd("let g:which_key_map.5 = 'Buffer-5'")
cmd("let g:which_key_map.6 = 'Buffer-6'")
cmd("let g:which_key_map.7 = 'Buffer-7'")
cmd("let g:which_key_map.8 = 'Buffer-8'")
cmd("let g:which_key_map.9 = 'Buffer-9'")

fn['which_key#register']('<Space>', "g:which_key_map")
