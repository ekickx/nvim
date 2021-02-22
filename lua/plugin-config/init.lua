vim.cmd [[packadd packer.nvim]]

local load_conf = function(file)
  require('plugin-config.'..file)
end

return require('packer').startup(function()
  -- packer
  use {'wbthomason/packer.nvim', opt = true}

  -- Interface
  -- statusline
  use 'glepnir/galaxyline.nvim'
  load_conf('galaxyline')
  -- statusline but on top, for buffer/tab
  use {'akinsho/nvim-bufferline.lua', opt = true}
  load_conf('nvim-bufferline')
  -- look at beauty icons
  use 'kyazdani42/nvim-web-devicons'
  -- colorschemes
  use 'lifepillar/vim-gruvbox8'
  -- better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', opt = true}
  load_conf('nvim-treesitter')
  -- indentline
  use {'Yggdroot/indentLine', opt = true}
  load_conf('indentLine')

  -- treesitter playground
  use {'nvim-treesitter/playground', opt = true}

  -- Git
  -- git wrapper (e.g show branch on statusline)
  use 'tpope/vim-fugitive'
  -- shows git diff sign
  use {'lewis6991/gitsigns.nvim', opt = true}
  load_conf('gitsigns')
  -- easier commit message
  use 'rhysd/committia.vim'

  -- Cool lua util function, depedency of some plugins
  use 'nvim-lua/plenary.nvim'

  -- neovim buil-in lsp config
  use {'neovim/nvim-lspconfig', opt = true}
  load_conf('nvim-lspconfig')
  -- better lsp ui
  use 'glepnir/lspsaga.nvim'
  -- snippet
  -- use {'hrsh7th/vim-vsnip', opt = true}
  -- completition
  use 'hrsh7th/nvim-compe'
  load_conf('nvim-compe')
  -- formatter
  use {'lukas-reineke/format.nvim', opt = true}
  -- chnage root dir based on nvim-lspconfig
  -- use {'oberblastmeister/rooter.nvim', opt = true}
  -- load_conf('rooter')

  -- better search highlighting
  use {'kevinhwang91/nvim-hlslens', opt = true}
  load_conf('nvim-hlslens')
  -- luatree
  use {'kyazdani42/nvim-tree.lua', opt = true}
  load_conf('luatree')
  -- float terminal
  use {'voldikss/vim-floaterm', opt = true}
  load_conf('vim-floaterm')
  -- nvim telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}}
  }

  -- Markdown and note taking
  -- markdown
  use {'SidOfc/mkdx', opt = true}
  -- remove distraction
  use 'junegunn/goyo.vim'
  load_conf('goyo')
  -- zettelkasten note taking with neuron
  use {'oberblastmeister/neuron.nvim', opt = true}
  load_conf('neuron')

  -- show keybinding in popup like on doom-emacs
  use {'liuchengxu/vim-which-key', opt = true}
  load_conf('which-key')
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
  load_conf('nvim-colorizer')

  -- go
  use {'fatih/vim-go', opt = true}
end)
