filetype plugin indent on

" make background transparent
hi Normal ctermbg=NONE
hi Normal guibg=NONE
hi EndOfBuffer ctermbg=NONE
hi LineNr ctermbg=234

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

" indent line
let g:indentLine_char = '│'
" autocmd BufWinEnter * :set list lcs=tab:\│\ 

let g:airline_theme='edge'

" Emmet
let g:user_emmet_leader_key=','
