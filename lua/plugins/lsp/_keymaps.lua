-- Lspsaga scroll
Map_n {'<C-f>',"lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>"}
Map_n {'<C-b>',"lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>"}

-- code action
Map_n {'<Leader>lc', ":Lspsaga code_action<CR>"}
Map_v {'<Leader>lc', ":<C-U>Lspsaga code_action<CR>"}

-- show diagnostic
Map_n {'<Leader>lDs', ":Lspsaga show_line_diagnostics<CR>"}
-- jump to next diagnostic
Map_n {'<Leader>lDn', ":Lspsaga diagnostic_jump_next<CR>"}
-- jump to prev diagnostic
Map_n {'<Leader>lDp', ":Lspsaga diagnostic_jump_prev<CR>"}

-- show hover doc
Map_n {'<Leader>lh', ":Lspsaga hover_doc<CR>"}
Map_n {'K', ":Lspsaga hover_doc<CR>"}

-- preview definition
Map_n {'<Leader>ldp', ":Lspsaga preview_definition<CR>"}
Map_n {'<Leader>ldg', ":lua vim.lsp.buf.definition()<CR>"}
Map_n {'<Leader>ldv', ":vsplit | lua vim.lsp.buf.definition()<CR>"}
Map_n {'<Leader>lds', ":split | lua vim.lsp.buf.definition()<CR>"}

-- rename var, func, etc
Map_n {'<Leader>lr', ":Lspsaga rename<CR>"}

-- signature help / parameter info
Map_n {'<Leader>ls', ":Lspsaga signature_help<CR>"}

-------------------
-- Go to
-------------------
-- reference
Map_n {'<Leader>lr', ":Trouble lsp_references<CR>"}
