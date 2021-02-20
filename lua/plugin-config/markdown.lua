vim.cmd[[packadd mkdx]]

-- Prevent load Plasticboy's markdown which interferes with mkdx list indentation
vim.g.polyglot_disabled = 'markdown'

vim.cmd[[let g:mkdx#settings = { 'map': { 'prefix': '<leader>m' } }]]
