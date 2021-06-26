-- Set leader key
vim.g.mapleader = " "

-- Refresh config
Map_n {'<F5>', ':luafile %<CR>'}
Map_i {'<F5>', ':luafile %<CR>'}

-- Buffer keys

-- new buffer
Map_n {'<Leader>bN', ':enew<CR>'}
-- close/delete buffer
Map_n {'<Leader>bx', ':bd!<CR>'}

-- Switch buffer
-- previously visited buffer
Map_n {'<Leader>bb', ':b#<CR>'}
-- next buffer
Map_n {'<Leader>bn', ':bn<CR>'}
-- preivous buffer
Map_n {'<Leader>bp', ':bp<CR>'}

-- Window keys

-- Move between window
-- move up
Map_n {'<C-K>', '<C-W><C-K>'}
Map_n {'<Leader>wk', '<C-W><C-K>'}
-- move down
Map_n {'<C-J>', '<C-W><C-J>'}
Map_n {'<Leader>wj', '<C-W><C-J>'}
-- move left
Map_n {'<C-H>', '<C-W><C-H>'}
Map_n {'<Leader>wh', '<C-W><C-H>'}
-- move right
Map_n {'<C-L>', '<C-W><C-L>'}
Map_n {'<Leader>wl', '<C-W><C-L>'}

-- Split window
-- horizontal/below split
Map_n {'<Leader>ws', ':split<CR>'}
Map_n {'<Leader>s', ':split<CR>'}
-- vertical/right split
Map_n {'<Leader>wv', ':vsplit<CR>'}
Map_n {'<Leader>v', ':vsplit<CR>'}

-- close window
Map_n {'<Leader>wx' , ':close<CR>'}

-- Move line/s
Map_n {'<A-j>', ':m .+1<CR>=='}
Map_n {'<A-k>', ':m .-2<CR>=='}
Map_v {"<A-j>", ":m '>+1<CR>gv=gv"}
Map_v {"<A-k>", ":m '<-2<CR>gv=gv"}
Map_i {'<A-j>', '<Esc>:m .+1<CR>==gi'}
Map_i {'<A-k>', '<Esc>:m .-2<CR>==gi'}

-- Yank/copy to clipboard
Map_n {'<Leader>y', '"+yy'}
Map_v {'<Leader>y', '"+y'}
-- Paste from clipboard
Map_n {'<Leader>p', '"+p'}

-- Toggle conceal
Map_n {"<Leader>tC", ":set <C-R>=&conceallevel ? 'conceallevel=0' : 'conceallevel=1'<CR><CR>"}

--------- Plugin Keybind ----------

-- LSP
-- code action
Map_n {'<Leader>lc', ":Lspsaga code_action<CR>"}
Map_v {'<Leader>lc', ":<C-U>Lspsaga code_action<CR>"}
-- show diagnostic
Map_n {'<Leader>lds', ":Lspsaga show_line_diagnostics<CR>"}
-- jump to next diagnostic
Map_n {'<Leader>ldn', ":Lspsaga diagnostic_jump_next<CR>"}
-- jump to prev diagnostic
Map_n {'<Leader>ldp', ":Lspsaga diagnostic_jump_prev<CR>"}
-- find definition and reference
Map_n {'<Leader>lf', ":Lspsaga lsp_finder<CR>"}
-- show hover doc
Map_n {'<Leader>lh', ":Lspsaga hover_doc<CR>"}
-- preview definition
Map_n {'<Leader>lp', ":Lspsaga preview_definition<CR>"}
-- rename var, func, etc
Map_n {'<Leader>lr', ":Lspsaga rename<CR>"}
-- signature help / parameter info
Map_n {'<Leader>ls', ":Lspsaga signature_help<CR>"}
