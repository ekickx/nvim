" Don't highlight changed line
let g:signify_line_highlight = 0

" Symbol
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" Colors
" make bg color have same color with terminal color
hi SignColumn guibg=NONE
highlight SignifySignAdd    ctermfg=2 ctermbg=NONE
highlight SignifySignDelete ctermfg=1   ctermbg=NONE
highlight SignifySignChange ctermfg=214   ctermbg=NONE
