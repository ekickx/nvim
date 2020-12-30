vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- packer
  use {'wbthomason/packer.nvim', opt = true}

  -- Interface
  -- statusline
  use 'glepnir/galaxyline.nvim'
  -- statusline but on top, for buffer/tab
  use 'akinsho/nvim-bufferline.lua'
  -- look at beauty icons
  use 'ryanoasis/vim-devicons'
  -- colorschemes
  use 'connorholyday/vim-snazzy'
  -- better syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'
  -- indentline
  use 'Yggdroot/indentLine'

  -- Window management
  -- easyly resize (and move between) window
  use 'simeji/winresizer'
  -- swap window without ruining your layour
  use 'wesQ3/vim-windowswap'

  -- Git
  -- git wrapper (e.g show branch on statusline)
  use 'tpope/vim-fugitive'
  -- shows git diff sign
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  -- easier commit message
  use 'rhysd/committia.vim'

  -- neovim buil-in lsp config
  use 'neovim/nvim-lspconfig'
  -- snippet
  use 'hrsh7th/vim-vsnip'
  -- completition
  use 'nvim-lua/completion-nvim'
  -- completition bufer
  use 'steelsojka/completion-buffers'

  -- nerdtree
  use 'scrooloose/nerdtree'
  -- file manager
  use 'mcchrish/nnn.vim'
  -- float terminal

  use 'voldikss/vim-floaterm'
  -- show keybinding in popup like on doom-emacs
  use 'liuchengxu/vim-which-key'
  -- for handling sudo in neovim
  use 'lambdalisue/suda.vim'
  -- automatic closing of quotes, parenthesis, brackets, etc.
  use 'Raimondi/delimitMate'
  -- indent multi text ( easy align : so many feature ), eg: `gaip* `
  use 'junegunn/vim-easy-align'
  -- undo tree
  use {'mbbill/undotree', opt = true}
  -- to comment lines
  use 'tpope/vim-commentary'
  -- smooth scrolling
  use 'psliwka/vim-smoothie'
  -- show color on color code
  use {'lilydjwg/colorizer', opt = true}

  -- go
  use 'fatih/vim-go'
end)
