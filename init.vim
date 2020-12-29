call plug#begin()

" Interface
" statusline
Plug 'itchyny/lightline.vim'
" statusline but on top, for buffer/tab
Plug 'mengelbrecht/lightline-bufferline'
" look at beauty icons
Plug 'ryanoasis/vim-devicons'
" colorschemes
Plug 'connorholyday/vim-snazzy'
" better syntax highlighting
Plug 'sheerun/vim-polyglot'

" Window management
" easyly resize (and move between) window
Plug 'simeji/winresizer'
" swap window without ruining your layour
Plug 'wesQ3/vim-windowswap'

" Git
" git wrapper (e.g show branch on statusline)
Plug 'tpope/vim-fugitive'
" shows git diff, alternative to gitgutter
Plug 'mhinz/vim-signify'
" Easier commit message
Plug 'rhysd/committia.vim'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" file manager
Plug 'mcchrish/nnn.vim'
" float terminal
Plug 'voldikss/vim-floaterm'
" show keybinding in popup like on doom-emacs
Plug 'liuchengxu/vim-which-key'
" for handling sudo in neovim
Plug 'lambdalisue/suda.vim'
" automatic closing of quotes, parenthesis, brackets, etc.
Plug 'Raimondi/delimitMate'
" indent multi text ( easy align : so many feature ), eg: `gaip* `
Plug 'junegunn/vim-easy-align'
" undo tree
Plug 'mbbill/undotree'
" to comment lines
Plug 'tpope/vim-commentary'
" smooth scrolling
Plug 'psliwka/vim-smoothie'
" indentline
Plug 'Yggdroot/indentLine'
" show color on color code
Plug 'lilydjwg/colorizer', { 'on': 'ColorToggle' } 
" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" LSP support
Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'do': 'bash install.sh',
      \ }
" Plug 'dense-analysis/ale'
" Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" " time tracking programming activity
" Plug 'wakatime/vim-wakatime'

" " html
" " emmet is emmet
" Plug 'mattn/emmet-vim'

" " go
" " go devlopment plugin
Plug 'fatih/vim-go', { 'for': 'go', 'do': ':GoUpdateBinaries' }

call plug#end()

" Source config
source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/keys.vim
for file in split(glob('$HOME/.config/nvim/config/plugins/*.vim'), '\n')
  exe 'source' file 
endfor
