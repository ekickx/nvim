" Map Leader to <space>
let mapleader = " "

" Buffer keys
" new buffer
nnoremap <Leader>bN :enew<CR>
" delete buffer
nnoremap <Leader>bd :bd!<CR>
"
" Switch buffer
" prevously edited buffer
nnoremap <Leader>bb :b#<CR>
" next buffer
nnoremap <Leader>l :bn<CR>
nnoremap <Leader>bn :bn<CR>
" prev buffer
nnoremap <Leader>h :bp<CR>
nnoremap <Leader>bp :bp<CR>
"
" Switch buffer with lightline-bufferline
nnoremap <Leader>1 :call lightline#bufferline#go(1)<CR>
nnoremap <Leader>2 :call lightline#bufferline#go(2)<CR>
nnoremap <Leader>3 :call lightline#bufferline#go(3)<CR>
nnoremap <Leader>4 :call lightline#bufferline#go(4)<CR>
nnoremap <Leader>5 :call lightline#bufferline#go(5)<CR>
nnoremap <Leader>6 :call lightline#bufferline#go(6)<CR>
nnoremap <Leader>7 :call lightline#bufferline#go(7)<CR>
nnoremap <Leader>8 :call lightline#bufferline#go(8)<CR>
nnoremap <Leader>9 :call lightline#bufferline#go(9)<CR>
nnoremap <Leader>0 :call lightline#bufferline#go(10)<CR>
" or
nnoremap <Leader>b1 :call lightline#bufferline#go(1)<CR>
nnoremap <Leader>b2 :call lightline#bufferline#go(2)<CR>
nnoremap <Leader>b3 :call lightline#bufferline#go(3)<CR>
nnoremap <Leader>b4 :call lightline#bufferline#go(4)<CR>
nnoremap <Leader>b5 :call lightline#bufferline#go(5)<CR>
nnoremap <Leader>b6 :call lightline#bufferline#go(6)<CR>
nnoremap <Leader>b7 :call lightline#bufferline#go(7)<CR>
nnoremap <Leader>b8 :call lightline#bufferline#go(8)<CR>
nnoremap <Leader>b9 :call lightline#bufferline#go(9)<CR>
nnoremap <Leader>b0 :call lightline#bufferline#go(10)<CR>

" Window keys
"
" Resize window (with `winresizer` plugin)
" enter resize mode
let g:winresizer_start_key = '<Leader>wR'
"
" Move between window
" move up
nnoremap <C-K> <C-W><C-K>
nnoremap <Leader>wk <C-W><C-K>
" move down
nnoremap <C-J> <C-W><C-J>
nnoremap <Leader>wj <C-W><C-J>
" move left
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>wh <C-W><C-H>
" move right
nnoremap <C-L> <C-W><C-L>
nnoremap <Leader>wl <C-W><C-L>
"
" Split window
" horizontal/below split
nnoremap <Leader>ws :split<CR>
nnoremap <Leader>s :split<CR>
" vertical/right split
nnoremap <Leader>wv :vsplit<CR>
nnoremap <Leader>v :vsplit<CR>
"
" swap window
nnoremap <silent> <Leader>wS :call WindowSwap#EasyWindowSwap()<CR>
" close window
nnoremap <Leader>wx :close<CR>

" Move line/s
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" For vnoremap selection search
vnoremap / y/<C-R>"<CR>

" Folding
nmap <Leader>f zf%
" enable folding
set foldenable
" start folding then we are 10 blocks deep
set foldlevelstart=2
" 10 nested fold max
set foldnestmax=5
" fold based on indent level
set foldmethod=indent

" Function keys
" toggle paste mode
nnoremap <silent> <F2> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" refresh config
nnoremap <F5> :source $HOME/.config/nvim/init.vim<CR>

" Commentary
nnoremap ' :Commentary<CR>
vnoremap ' :Commentary<CR>

" Suda
" save with sudo
cmap w!! :w suda://% <CR>

" EasyAlign
" start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Keybinding for plugin that not frequently used and only used quickly
" Colorizer
nnoremap <Leader>qc :ColorToggle<CR>
" Nerdtree
nnoremap <Leader>qn :NERDTreeToggle<CR>
" Undotree
nnoremap <Leader>qu :UndotreeToggle<CR>

" nnn
" start nnn in current dir
nnoremap <leader>n :NnnPicker %:p:h<CR>

" Float terminal
" new term
nnoremap <Leader>tn :FloatermNew<CR>
tnoremap <Leader>tn <C-\><C-n>:FloatermNew<CR>
" next term
nnoremap <Leader>tl :FloatermNext<CR>
tnoremap <Leader>tl <C-\><C-n>:FloatermNext<CR>
" prev term
nnoremap <Leader>th :FloatermPrev<CR>
tnoremap <Leader>th <C-\><C-n>:FloatermPrev<CR>
" toggle term
nnoremap <Leader>tt :FloatermToggle<CR>
tnoremap <Leader>tt <C-\><C-n>:FloatermToggle<CR>
