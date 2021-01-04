packadd! winresizer

" Replace esc functionality from `finish` to `cancel`
" disable default behavior that use esc to `finish`
let g:winresizer_finish_with_escape = 0
" set esc to `cancel`
let g:winresizer_keycode_cancel = 27

" The change width of window size when left or right key is pressed
" (default is 10)
let g:winresizer_vert_resize = 5
