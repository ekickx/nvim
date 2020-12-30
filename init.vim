lua require('plugin')
lua require('keybind')

" Source config
source $HOME/.config/nvim/config/general.vim
for file in split(glob('$HOME/.config/nvim/plugin-config/*.vim'), '\n')
  exe 'source' file 
endfor
