call plug#begin()

" general
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " dark powered neo-completion
Plug 'SirVer/ultisnips' " completion ~~  UltiSnips is the ultimate solution for snippets in Vim
Plug 'benekastah/neomake' " asynchronously runs programs job-control functionality
Plug 'haya14busa/incsearch.vim' " search example: /salam
Plug 'honza/vim-snippets' " vim snippets
Plug 'jaawerth/neomake-local-eslint-first' " for eslint local
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerd tree
Plug 'terryma/vim-multiple-cursors' " Ctrl n multi cursor

" editing
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'airblade/vim-gitgutter' " shows a git diff in the 'gutter'
Plug 'junegunn/vim-easy-align' " indent multi text ( easy align : so many feature ), eg: `gaip* `
Plug 'mbbill/undotree' " undo tree
Plug 'tpope/vim-commentary' " for multiline became to comment lines
Plug 'tpope/vim-repeat' " Repeat.vim remaps . in a way that plugins can tap into it
Plug 'tpope/vim-speeddating' " a Ctrl-a/Ctrl-x command to increment / decrement a line of Date
Plug 'tpope/vim-surround' " ysiw' | ds{ds)  provides mappings to easily delete, change and add such surroundings in pairs
" Plug 'tpope/vim-unimpaired' " [a cursor to previous a, ]x cursor to next x
Plug 'vim-scripts/camelcasemotion' " when w,e,b help cursor stay at camelCaseWord
Plug 'mattn/emmet-vim'

" eye candy
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' } " #aaa to Colorize
Plug 'myusuf3/numbers.vim' " intelligently toggling line numbers
Plug 'vim-airline/vim-airline' " Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " airline theme...
Plug 'Yggdroot/indentLine'

" colorschemes
Plug 'connorholyday/vim-snazzy'
Plug 'ryanoasis/vim-devicons' " look at beauty icons

" text objects
" Plug 'glts/vim-textobj-comment' " provides text objects for comments , eg. SHIFT + \
" Plug 'kana/vim-textobj-fold' " provides text objects for fold , eg. yaz to yank arround fold
" Plug 'kana/vim-textobj-function' " Text objects for functions, build error ??!
" Plug 'kana/vim-textobj-indent' " Text objects for indented blocks of lines, eg. y- yank of blocks of lines
Plug 'wellle/targets.vim' " ci' to (cut in single quote), also support (I l L a A n N) for (In Last last in  .. next Next)


call plug#end()
