Cmd[[packadd! which-key.nvim]]

local wk = require 'which-key'

local leader_maps = {
  b = {
    name = 'Buffer',
    b = 'Previously visited',
    N = 'New',
    n = 'Next',
    p = 'Previous',
    x = 'Close',
  },
  d = {name = 'Debug'},
  f = {
    name = 'File',
    c = 'Find from content',
    f = 'Find from filename',
    m = 'File Manager',
    s = 'Write sudo',
  },
  g = {name = 'Git'},
  j = {
    name = 'Jump',
    c = 'Char 1',
    C = 'Char 2',
    l = 'Line',
    p = 'Pattern',
    w = 'Word',
  },
  l = {name = 'Lsp'},
  o = {name = 'Open'},
  p = 'Paste from clipboard',
  S = {
    name = 'Sniprun',
    c = 'Clean REPL Memory',
    i = 'Info',
    R = 'Reset',
    r = 'Run',
    x = 'Close',
  },
  s = 'Split below(horizontal)',
  T = {
    name = 'Toggle',
    C = 'Conceal',
    c = 'Colorizer',
    i = 'Indentline',
    t = 'Terminal',
    T = 'NvimTree',
  },
  t = {name = 'Terminal'},
  v = 'Split right(vertical)',
  w = {
    name = 'Window',
    h = 'Move left',
    j = 'Move down',
    k = 'Move up',
    l = 'Move right',
    s = 'Split below',
    v = 'Split right',
    x = 'Close',
  },
  y = 'Copy to clipboard',
}

for i = 1, 9 do
  leader_maps[tostring(i)] = 'Buffer-'..i
end

wk.register(leader_maps, {prefix = '<Leader>'})
