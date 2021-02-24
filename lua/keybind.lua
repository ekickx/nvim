local setmap = vim.api.nvim_set_keymap

-- Set leader key
vim.g.mapleader = " "

-- Refresh config
setmap('n', '<F5>', ':luafile %<CR>', { noremap = true })
setmap('i', '<F5>', ':luafile %<CR>', { noremap = true })

-- Buffer keys

-- new buffer
setmap('n', '<Leader>bN', ':enew<CR>', { noremap = true})
-- close/delete buffer
setmap('n', '<Leader>bx', ':bd!<CR>', { noremap = true})

-- Switch buffer
-- previously visited buffer
setmap('n', '<Leader>bb', ':b#<CR>', { noremap = true})
-- next buffer
setmap('n', '<Leader>bn', ':bn<CR>', { noremap = true})
-- preivous buffer
setmap('n', '<Leader>bp', ':bp<CR>', { noremap = true})

-- Window keys

-- Move between window
-- move up
setmap('n', '<C-K>', '<C-W><C-K>', { noremap = true})
setmap('n', '<Leader>wk', '<C-W><C-K>', { noremap = true })
-- move down
setmap('n', '<C-J>', '<C-W><C-J>', { noremap = true})
setmap('n', '<Leader>wj', '<C-W><C-J>', { noremap = true })
-- move left
setmap('n', '<C-H>', '<C-W><C-H>', { noremap = true})
setmap('n', '<Leader>wh', '<C-W><C-H>', { noremap = true })
-- move right
setmap('n', '<C-L>', '<C-W><C-L>', { noremap = true})
setmap('n', '<Leader>wl', '<C-W><C-L>', { noremap = true })

-- Split window
-- horizontal/below split
setmap('n', '<Leader>ws', ':split<CR>', { noremap = true })
setmap('n', '<Leader>s', ':split<CR>', { noremap = true })
-- vertical/right split
setmap('n', '<Leader>wv', ':vsplit<CR>', { noremap = true })
setmap('n', '<Leader>v', ':vsplit<CR>', { noremap = true })

-- close window
setmap('n', '<Leader>wx' , ':close<CR>', { noremap = true })

-- Move line/s
setmap('n', '<A-j>', ':m .+1<CR>==', { noremap = true })
setmap('n', '<A-k>', ':m .-2<CR>==', { noremap = true })
setmap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
setmap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })
setmap('i', '<A-j>', '<Esc>:m .+1<CR>==gi', { noremap = true })
setmap('i', '<A-k>', '<Esc>:m .-2<CR>==gi', { noremap = true })

-- Yank/copy to clipboard
setmap('n', '<Leader>y', '"+yy', { noremap = true })
setmap('v', '<Leader>y', '"+y', { noremap = true })
-- Paste from clipboard
setmap('n', '<Leader>p', '"+p', { noremap = true })

-- Toggle conceal
setmap("n", "<Leader>c", ":set <C-R>=&conceallevel ? 'conceallevel=0' : 'conceallevel=1'<CR><CR>", { noremap = true })

--------- Plugin Keybind ----------

-- Colorizer
setmap('n', '<Leader>qc', ':ColorizerToggle<CR>', { noremap = true })
-- Luatree
setmap('n', '<Leader>ql', ':NvimTreeToggle<CR>', { noremap = true })
-- Undotree
setmap('n', '<Leader>qu', ':UndotreeToggle<CR>', { noremap = true })

-- Commentary
setmap("n", "'", ":Commentary<CR>", { noremap = true })
setmap("v", "'", ":Commentary<CR>", { noremap = true })

-- File manager - nnn
setmap('n', '<Leader>n', ':FloatermNew --wintype=float --width=0.7 --height=0.8 nnn<CR>', { noremap = true })

-- Fuzzy finder - Telescope
-- Find from filename
setmap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true })
-- Find from context - Live grep
setmap('n', '<Leader>fc', ':Telescope live_grep<CR>', { noremap = true })

-- Float terminal
-- escape terminal
setmap('t', "<Leader>te", "<C-\\><C-n>", { noremap = true })
-- new term
setmap('n', '<Leader>tN', ':FloatermNew<CR>', { noremap = true })
setmap('t', "<Leader>tN", "<C-\\><C-n>:FloatermNew<CR>", { noremap = true })
-- toggle term
setmap('n', '<Leader>tt', ':FloatermToggle<CR>', { noremap = true })
setmap('t', "<Leader>tt", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true })
-- next term
setmap('n', '<Leader>tn', ':FloatermNext<CR>', { noremap = true })
setmap('t', "<Leader>tn", "<C-\\><C-n>:FloatermNext<CR>", { noremap = true })
-- prev term
setmap('n', '<Leader>tp', ':FloatermPrev<CR>', { noremap = true })
setmap('t', "<Leader>tp", "<C-\\><C-n>:FloatermPrev<CR>", { noremap = true })

-- Git
-- Add current file
setmap('n', '<Leader>ga', ":Gwrite", { noremap = true })
-- Add all
setmap('n', '<Leader>gA', ":G add .<CR>", { noremap = true })
-- switch branch
setmap('n', '<Leader>gb', ":lua require'telescope.builtin'.git_branches()", { noremap = true })
-- commit
setmap('n', '<Leader>gc', ":Gcommit -v<CR>", { noremap = true })
-- show git log
setmap('n', '<Leader>gl', ":G log -p<CR>", { noremap = true })
-- git status
setmap('n', '<Leader>gs', ":Gstatus<CR>", { noremap = true })
-- git pull
setmap('n', '<Leader>gP', ":G pull<Space>", { noremap = true })
-- git push
setmap('n', '<Leader>gp', ":G push<CR>", { noremap = true })
-- fugitive diff vertical split
setmap('n', '<Leader>gv', ":Gvdiffsplit<CR>", { noremap = true })

-- LSP
-- code action
setmap('n', '<Leader>lc', ":Lspsaga code_action<CR>", { noremap = true })
setmap('v', '<Leader>lc', ":<C-U>Lspsaga code_action<CR>", { noremap = true })
-- show diagnostic
setmap('n', '<Leader>lds', ":Lspsaga show_line_diagnostics<CR>", { noremap = true })
-- jump to next diagnostic
setmap('n', '<Leader>ldn', ":Lspsaga diagnostic_jump_next<CR>", { noremap = true })
-- jump to prev diagnostic
setmap('n', '<Leader>ldp', ":Lspsaga diagnostic_jump_prev<CR>", { noremap = true })
-- find definition and reference
setmap('n', '<Leader>lf', ":Lspsaga lsp_finder<CR>", { noremap = true })
-- show hover doc
setmap('n', '<Leader>lh', ":Lspsaga hover_doc<CR>", { noremap = true })
-- preview definition
setmap('n', '<Leader>lp', ":Lspsaga preview_definition<CR>", { noremap = true })
-- rename var, func, etc
setmap('n', '<Leader>lr', ":Lspsaga rename<CR>", { noremap = true })
-- signature help / parameter info
setmap('n', '<Leader>ls', ":Lspsaga signature_help<CR>", { noremap = true })

-- Neuron zettelkesten
-- create a new note
setmap('n', '<Leader>zN', ":lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>", { noremap = true })
 -- click enter on [[my_link]] or [[[my_link]]] to enter it
setmap('n', '<CR>', ":lua require'neuron'.enter_link()<CR>", { noremap = true })
-- go to next [[my_link]] or [[[my_link]]]
setmap('n', '<Leader>zn', ":lua require'neuron'.goto_next_extmark()<CR>", { noremap = true })
-- go to previous [[my_link]] or [[[my_link]]]
setmap('n', '<Leader>zp', ":lua require'neuron'.goto_prev_extmark()<CR>", { noremap = true })
-- find your notes, click enter to create the note if there are not notes that match
setmap('n', '<Leader>zf', ":lua require'neuron/telescope'.find_zettels()<CR>", { noremap = true })
-- insert note's id
setmap('n', '<Leader>zi', ":lua require'neuron/telescope'.find_zettels{insert = true}<CR>", { noremap = true })
-- find the backlinks of the current note all the note that link this note
setmap('n', '<Leader>zb', ":lua require'neuron/telescope'.find_backlinks()<CR>", { noremap = true })
-- find all tags and insert
setmap('n', '<Leader>zt', ":lua require'neuron/telescope'.find_tags()<CR>", { noremap = true })
-- start the neuron server and render markdown, auto reload on save
setmap('n', '<Leader>zs', ":lua require'neuron'.rib {address = '127.0.0.1:8200', verbose = true}<CR>", { noremap = true })

-- Suda
setmap("c", "w!!", ":w suda://% <CR>", { noremap = false })

-- Vim-vsnip and Nvim-compe
vim.fn['lexima#set_default_rules']()

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

setmap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
setmap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
setmap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
setmap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
setmap('i', '<CR>', "compe#confirm(lexima#expand('<LT>CR>', 'i'))", { noremap = true, silent = true, expr = true })
