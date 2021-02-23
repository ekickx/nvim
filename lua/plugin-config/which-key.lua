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
  b = {
    name = '+buffer',
    b = 'Previously edited',
    x = 'Close',
    N = 'New',
    n = 'Next',
    p = 'Prev',
  },
  c = 'Toggle conceal',
  f = {
    name = '+fuzzy-finder',
    f = 'From filename',
    c = 'From context',
  },
  g = {
    name = '+git',
    A = 'Add all',
    a = 'Add current',
    b = 'Switch branch',
    c = 'Commit',
    l = 'Show Log',
    s = 'Status',
    P = 'Pull',
    p = 'Push',
    v = 'Vertical diffsplit'
  },
  l = {
    name = '+lsp',
    c = 'Code action',
    d = {
      name = '+diagnostic',
      s = 'Show diagnostic',
      n = 'Next diagnostic',
      p = 'Previous diagnostic',
    },
    f = 'Find def or ref',
    h = 'Signature help',
    p = 'Preview definition',
    r = 'Rename',
    s = 'Show hover doc',
  },
  n = 'Nnn file manager',
  p = 'Paste from clipboard',
  q = {
    name = '+quick-action',
    c = 'Colorizer',
    n = 'NerdTree',
    u = 'Undotree',
  },
  s = 'Split horizontal(below)',
  t = {
    name = '+terminal',
    h = 'Previous',
    l = 'Next',
    p = 'Previous',
    n = 'Next',
    N = 'New',
    t = 'Toggle',
  },
  v = 'Split vertical(right)',
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
  y = 'Copy to clipboard',
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

for i = 1, 9 do
  cmd("let g:which_key_map."..i.." = 'which_key_ignore'")
end

fn['which_key#register']('<Space>', "g:which_key_map")
