call plug#begin()

" general
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " nerd tree
Plug 'lambdalisue/suda.vim' " For handling sudo in neovim
Plug 'wakatime/vim-wakatime' " Time tracking programming activity

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
Plug 'vim-airline/vim-airline' " lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes' " airline theme...
Plug 'Yggdroot/indentLine'

" colorschemes
Plug 'connorholyday/vim-snazzy' " noice theme
Plug 'ryanoasis/vim-devicons' " look at beauty icons

call plug#end()

" Source config
source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/keys.vimrc
source $HOME/.config/nvim/config/line.vimrc
