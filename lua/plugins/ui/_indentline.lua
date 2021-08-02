vim.cmd[[packadd indent-blankline.nvim]]

vim.g.indent_blankline_char = '│'

Map_n {'<Leader>Ti', ':IndentBlanklineToggle<CR>'}
