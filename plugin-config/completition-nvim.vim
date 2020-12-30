" Auto complete on every buffers
autocmd BufEnter * lua require'completion'.on_attach()

" Enable snippet
let g:completion_enable_snippet = 'vim-vsnip'

" Autochange source when one isn't available
let g:completion_auto_change_source = 1
" Chain list
let g:completion_chain_complete_list = [
    \{'complete_items': ['lsp']},
    \{'complete_items': ['buffers']},
    \{'mode': '<c-p>'},
    \{'mode': '<c-n>'}
\]

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
