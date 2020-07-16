call plug#begin()

" general
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerd tree
Plug 'lambdalisue/suda.vim' " For handling sudo in neovim

" editing
Plug 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'airblade/vim-gitgutter' " shows a git diff in the 'gutter'
Plug 'junegunn/vim-easy-align' " indent multi text ( easy align : so many feature ), eg: `gaip* `
Plug 'mbbill/undotree' " undo tree
Plug 'tpope/vim-commentary' " for multiline became to comment lines
Plug 'mattn/emmet-vim' " if you dunno emmet, i dunno what you've been doing untill now
Plug 'sheerun/vim-polyglot' " better syntax highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " LSP support

" eye candy
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' } " #aaa to Colorize
Plug 'myusuf3/numbers.vim' " intelligently toggling line numbers
Plug 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " airline theme...
Plug 'Yggdroot/indentLine'

" colorschemes
Plug 'ayu-theme/ayu-vim' " noice theme
Plug 'ryanoasis/vim-devicons' " look at beauty icons

call plug#end()
