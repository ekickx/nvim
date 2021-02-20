vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- packer
  use {'wbthomason/packer.nvim', opt = true}

  -- Interface
  -- statusline
  use 'glepnir/galaxyline.nvim'
  -- statusline but on top, for buffer/tab
  use {'akinsho/nvim-bufferline.lua', opt = true}
  -- look at beauty icons
  use 'kyazdani42/nvim-web-devicons'
  -- colorschemes
  use 'lifepillar/vim-gruvbox8'
  -- better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', opt = true}
  -- indentline
  use {'Yggdroot/indentLine', opt = true}

  -- Git
  -- git wrapper (e.g show branch on statusline)
  use 'tpope/vim-fugitive'
  -- shows git diff sign
  use {'lewis6991/gitsigns.nvim', opt = true}
  -- easier commit message
  use 'rhysd/committia.vim'

  use 'nvim-lua/plenary.nvim'
  -- neovim buil-in lsp config
  use {'neovim/nvim-lspconfig', opt = true}
  -- snippet
  -- use {'hrsh7th/vim-vsnip', opt = true}
  -- completition
  use 'hrsh7th/nvim-compe'

  -- luatree
  use {'kyazdani42/nvim-tree.lua', opt = true}
  -- float terminal
  use {'voldikss/vim-floaterm', opt = true}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- zettelkasten note taking with neuron
  use {'oberblastmeister/neuron.nvim', opt = true}

  -- show keybinding in popup like on doom-emacs
  use {'liuchengxu/vim-which-key', opt = true}
  -- for handling sudo in neovim
  use 'lambdalisue/suda.vim'
  -- automatic closing of quotes, parenthesis, brackets, etc.
  use 'cohama/lexima.vim'
  -- indent multi text ( easy align : so many feature ), eg: `gaip* `
  use 'junegunn/vim-easy-align'
  -- undo tree
  -- use {'mbbill/undotree', opt = true}
  -- to comment lines
  use 'tpope/vim-commentary'
  -- smooth scrolling
  use 'psliwka/vim-smoothie'
  -- show color on color code
  use {'norcalli/nvim-colorizer.lua', opt = true}

  -- go
  use {'fatih/vim-go', opt = true}
end)
