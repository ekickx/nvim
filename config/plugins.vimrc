filetype plugin indent on

" make background transparent
hi Normal ctermbg=NONE
hi Normal guibg=NONE
hi EndOfBuffer ctermbg=NONE
hi LineNr ctermbg=234

" Remove gutter bg
hi SignColumn guibg=NONE

" delimitMate options
let delimitMate_expand_cr=1

" enable matchit (for matching tags with %)
runtime macros/matchit.vim

" disable colorizer at startup
let g:colorizer_startup = 0
let g:colorizer_nomap = 1

" vim-devicons
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
let g:airline_powerline_fonts = 1

" NERDTree
" autocmd vimenter * NERDTree
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize=20
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" nnn
" Floating window
let g:nnn#layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Debug' } }

" indent line
let g:indentLine_char = '│'

let g:airline_theme='edge'

" Emmet
let g:user_emmet_leader_key=','
