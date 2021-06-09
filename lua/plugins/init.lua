local fn, cmd = vim.fn, vim.cmd
local confs = {}

-- Add config to confs table
local add_conf = function (config)
  table.insert(confs, config)
end

-- Load all config in confs table
local load_conf = function(configs)
  for key in ipairs(configs) do
    require('plugins.'..configs[key])
  end
end

-- Install packer.nvim if doesn't exist
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer
  use {'wbthomason/packer.nvim', opt = true}
  use 'tweekmonster/startuptime.vim'

  ---------------------------------
  -- Dependant
  ---------------------------------
  use 'nvim-lua/plenary.nvim'
  -- Vim Popup API on Neovim
  use 'nvim-lua/popup.nvim'

  ---------------------------------
  -- Interface
  ---------------------------------
  -- Statusline
  use 'glepnir/galaxyline.nvim'
  add_conf('_galaxyline')
  -- Statusline but on top, for buffer/tab
  use {'akinsho/nvim-bufferline.lua', opt = true}
  add_conf('_bufferline')
  -- Look at beauty icons
  use 'kyazdani42/nvim-web-devicons'
  -- Colorschemes
  use 'lifepillar/vim-gruvbox8'
  -- Indentline
  use {'Yggdroot/indentLine', opt = true}
  add_conf('_indentLine')

  ---------------------------------
  -- LSP
  ---------------------------------
  add_conf('lsp')
  -- Manage lsp installation
  use {'kabouzeid/nvim-lspinstall', opt = true}
  -- Neovim buil-in lsp config
  use {'neovim/nvim-lspconfig', opt = true}
  -- Better lsp ui
  use {'glepnir/lspsaga.nvim', opt = true}

  -- Snippet
  use 'hrsh7th/vim-vsnip'
  -- Completition
  use {'hrsh7th/nvim-compe', opt = true}
  add_conf('_completion')
  -- Formatter
  use {'lukas-reineke/format.nvim', opt = true}

  ---------------------------------
  -- Telescope
  ---------------------------------
  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  -- Show cheatsheet
  use 'sudormrfbin/cheatsheet.nvim'

  ---------------------------------
  --
  -- Editing Support
  --
  ---------------------------------
  -- Parenthesis
  use 'machakann/vim-sandwich'
  -- Better navigation
  use 'phaazon/hop.nvim'
  -- Automatic closing of quotes, parenthesis, brackets, etc.
  use 'cohama/lexima.vim'
  -- Indent multi text ( easy align : so many feature ), eg: `gaip* `
  use 'junegunn/vim-easy-align'
  -- Manage abbrevation and/or spelling
  use {'Pocco81/AbbrevMan.nvim', opt = true}
  -- Comment lines
  use 'tpope/vim-commentary'
  -- Smooth scrolling
  use 'psliwka/vim-smoothie'
  -- Virtual text of current context
  use 'haringsrob/nvim_context_vt'
  ---------------------------------
  -- Treesitter
  ---------------------------------
  -- Better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', opt = true}
  add_conf'_treesitter'
  -- Rainbow parenthesis with treesitter
  use 'p00f/nvim-ts-rainbow'
  -- Treesitter playground
  use {'nvim-treesitter/playground', opt = true}

  ---------------------------------
  -- Git
  ---------------------------------
  -- Magit but neovim
  use {'TimUntersberger/neogit', opt = true}
  -- Shows git diff sign
  use {'lewis6991/gitsigns.nvim', opt = true}
  add_conf('git._gitsigns')

  ---------------------------------
  -- Other Utility
  ---------------------------------
  -- For handling sudo in neovim
  use 'lambdalisue/suda.vim'
  ---------------------------------
  -- Paste image from clipboard (my plugin: ekickx/clipboard-image.nvim)
  use '~/Projects/clipboard-image.nvim'
  add_conf('_clipboard-image')
  -- Show color on color code
  use {'norcalli/nvim-colorizer.lua', opt = true}
  add_conf('_colorizer')
  -- Better search highlighting
  use {'kevinhwang91/nvim-hlslens', opt = true}
  add_conf('_hlslens')
  ---------------------------------
  -- Show keybinding in popup like on doom-emacs
  use {'liuchengxu/vim-which-key', opt = true}
  add_conf('_which-key')
  ---------------------------------
  -- Tree explorer
  use {'kyazdani42/nvim-tree.lua', opt = true}
  add_conf('_luatree')
  -- Float terminal
  use {'voldikss/vim-floaterm', opt = true}
  add_conf('_terminal')

  ---------------------------------
  --
  -- Specific Language
  --
  ---------------------------------
  -- Go
  ---------------------------------
  use {'fatih/vim-go', opt = true}
  ---------------------------------
  -- Markdown and note taking
  ---------------------------------
  -- Adds some nice extra's for working with markdown
  use {'SidOfc/mkdx', opt = true}
  -- Markdown previewer
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
  -- Remove distraction
  use 'junegunn/goyo.vim'
  add_conf('_goyo')

  -- Load conf
  load_conf(confs)
end)
