" Guide will popup after n milisecond Leader pressed
set timeoutlen=500

" Map leader to which_key
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Guide popup appearance
" use `popup` instead of `float_win`
let g:which_key_use_floating_win = 0
" guide popup position
let g:which_key_position = 'botright'

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Define prefix dictionary
let g:which_key_map = {}

" Single mapping
let g:which_key_map.h = 'Previous buffer'
let g:which_key_map.l = 'Next buffer'
let g:which_key_map.n = 'File manager - nnn'
let g:which_key_map.s = 'Split horizontal(below)'
let g:which_key_map.v = 'Split vertical(right)'
let g:which_key_map.1 = 'Buffer-1'
let g:which_key_map.2 = 'Buffer-2'
let g:which_key_map.3 = 'Buffer-3'
let g:which_key_map.4 = 'Buffer-4'
let g:which_key_map.5 = 'Buffer-5'
let g:which_key_map.6 = 'Buffer-6'
let g:which_key_map.7 = 'Buffer-7'
let g:which_key_map.8 = 'Buffer-8'
let g:which_key_map.9 = 'Buffer-9'
let g:which_key_map.0 = 'Buffer-10'
" don't show keybinding on popup
let g:which_key_map.f = 'which_key_ignore'

" Group mapping
"
" quick action - group for plugin that used quickly
let g:which_key_map.q = { 'name': '+quick-action' }
let g:which_key_map.q.c = 'Colorizer'
let g:which_key_map.q.n = 'NerdTree'
let g:which_key_map.q.u = 'Undotree'
"
" buffer
let g:which_key_map.b = { 'name': '+buffer' }
let g:which_key_map.b.b = 'Previously edited'
let g:which_key_map.b.d = 'Delete'
let g:which_key_map.b.N = 'New'
let g:which_key_map.b.n = 'Next'
let g:which_key_map.b.p = 'Previous'
let g:which_key_map.b.1 = 'Buffer-1'
let g:which_key_map.b.2 = 'Buffer-2'
let g:which_key_map.b.3 = 'Buffer-3'
let g:which_key_map.b.4 = 'Buffer-4'
let g:which_key_map.b.5 = 'Buffer-5'
let g:which_key_map.b.6 = 'Buffer-6'
let g:which_key_map.b.7 = 'Buffer-7'
let g:which_key_map.b.8 = 'Buffer-8'
let g:which_key_map.b.9 = 'Buffer-9'
let g:which_key_map.b.0 = 'Buffer-10'
"
" terminal
let g:which_key_map.t = { 'name': '+terminal' }
let g:which_key_map.t.h = 'Previous'
let g:which_key_map.t.l = 'Next'
let g:which_key_map.t.n = 'New'
let g:which_key_map.t.t = 'Toggle'
"
" window
let g:which_key_map.w = { 'name': '+window' }
let g:which_key_map.w.h = 'Move left'
let g:which_key_map.w.j = 'Move down'
let g:which_key_map.w.k = 'Move up'
let g:which_key_map.w.l = 'Move right'
let g:which_key_map.w.S = 'Swap … with …'
let g:which_key_map.w.R = 'Resize mode'
let g:which_key_map.w.s = 'Split below'
let g:which_key_map.w.v = 'Split right'
let g:which_key_map.w.x = 'Close'

" Register which_key_map so the change can take effect
call which_key#register('<Space>', "g:which_key_map")
