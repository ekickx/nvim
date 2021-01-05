vim.cmd[[packadd nnn.vim]]

-- disable default binding
vim.cmd[[let g:nnn#set_default_mappings = 0]]

-- floating window
vim.cmd[[let g:nnn#layout = { 'window': { 'width': 0.95, 'height': 0.8, 'highlight': 'Debug' } }]]
