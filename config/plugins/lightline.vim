" always show statusline
set laststatus=2
" always show tabline/bufferline
set showtabline=2
" hide default mode text (e.g. INSERT) as lightline already displays it
set noshowmode 

let g:lightline = {
      \ 'colorscheme': 'PaperColor_dark',
      \ 'active': {
      \   'left': [[ 'mode', 'paste' ],['branch', 'hunks']],
      \   'right': [[ 'lineinfo', 'maxline' ],[ 'fileformat', 'fileencoding']]
      \},
      \ 'tabline': {
      \   'left': [['buffers']],
      \},
      \ 'component': {
      \   'maxline': "%{line('$')}"
      \},
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \},
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \},
      \ 'component_function': {
      \   'branch': 'LightlineFugitive',
      \   'hunks': 'LightlineSignify'
      \},
      \}

" Function to show branch name (e.g.  develop )
function! LightlineFugitive()
if exists('*fugitive#head')
  let branch = fugitive#head()
  return branch !=# '' ? '  ' . branch : ''
endif
return fugitive#head()
endfunction

" Function to show diff summary with vim-signify
" (e.g.   10    20)
function! LightlineSignify()
let [added, modified, removed] = sy#repo#get_stats()
let l:sy = ''
for [flag, count] in [
	\   [' ', added],
	\   [' ', removed],
	\   [' ', modified]
	\ ]
	if count > 0
		let l:sy .= printf(' %s%d ', flag, count)
	endif
endfor
if !empty(l:sy)
	let l:sy = printf('%s', l:sy)
	return printf('%s', l:sy)
else
	return ''
endif
endfunction
