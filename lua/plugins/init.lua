local load_conf = function (conf) return "require'plugins."..conf.."'" end

local plugins = {
  -- Packer
  {'wbthomason/packer.nvim', opt = true},
  {'tweekmonster/startuptime.vim', cmd = 'StartupTime'},

  ---------------------------------
  -- Dependant
  ---------------------------------
  'nvim-lua/plenary.nvim',
  -- Vim Popup API on Neovim
  'nvim-lua/popup.nvim',

  ---------------------------------
  -- Interface
  ---------------------------------
  -- Colorschemes
  {
    'RRethy/nvim-base16', event = 'VimEnter',
    config = load_conf 'ui._base16',
  },

  -- Statusline
  {
    'glepnir/galaxyline.nvim', after = 'nvim-base16',
    config = load_conf 'ui._galaxyline',
  },

  -- Statusline but on top, for buffer/tab
  {
    'akinsho/nvim-bufferline.lua', after = 'nvim-base16',
    config = load_conf 'ui._bufferline',
  },

  -- Interactive scrollbar
  {
    'dstein64/nvim-scrollview', after = 'nvim-base16',
    config = 'vim.cmd[[packadd! nvim-scrollview]]'
  },

  -- Icons
  {'kyazdani42/nvim-web-devicons', cmd = 'NvimTreeToggle'},

  -- Indentline
  -- {
  --   'lukas-reineke/indent-blankline.nvim', branch = 'lua',
  -- },

  -- Better search highlighting
  {
    'kevinhwang91/nvim-hlslens', keys = '/',
    config = load_conf 'ui._hlslens',
  },

  -- Remove distraction
  {
    'junegunn/goyo.vim', cmd = 'Goyo',
    config = load_conf 'ui._goyo',
  },

  -- Show keybinding in popup like on doom-emacs
  {
    'folke/which-key.nvim', event = 'VimEnter',
    config = load_conf 'ui._which-key'
  },

  ---------------------------------
  -- For Fun
  ---------------------------------
  -- Discord rich presence
  {'andweeb/presence.nvim', event = 'CursorMoved'},

  ---------------------------------
  -- LSP
  ---------------------------------

  -- Neovim buil-in lsp config
  {
    'neovim/nvim-lspconfig',
    event = 'BufRead',
    config = load_conf 'lsp',
    requires = {
      -- Manage lsp installation
      {'kabouzeid/nvim-lspinstall', after = 'nvim-lspconfig'},

      -- Better lsp ui
      {'glepnir/lspsaga.nvim', keys = '<Leader>l'},
    }
  },

  ---------------------------------
  -- Telescope
  ---------------------------------
  -- Telescope
  {
    'nvim-telescope/telescope.nvim', keys = '<Leader>f',
    config = load_conf 'telescope',
    requires = {
      {'nvim-telescope/telescope-media-files.nvim', after = 'telescope.nvim'},
    },
  },

  ---------------------------------
  --
  -- Editing Support
  --
  ---------------------------------
  -- Snippet
  {'hrsh7th/vim-vsnip', opt = true},

  -- Completition
  {
    'hrsh7th/nvim-compe', event = 'InsertEnter',
    config = load_conf '_completion',
  },

  -- Formatter
  {'lukas-reineke/format.nvim', opt = true},

  -- Automatic closing of quotes, parenthesis, brackets, etc.
  {
    'steelsojka/pears.nvim', after = 'nvim-compe',
    config = load_conf '_pears',
  },

  -- Easier way to modify pairs (brackets, parenthesis, etc)
  {'machakann/vim-sandwich', keys = 's'},

  -- Better navigate matching text (like pairs)
  {'andymass/vim-matchup', event = 'CursorMoved'},

  -- Better navigation
  {
    'phaazon/hop.nvim', keys = '<Leader>j',
  },
  -- {
  --   'ggandor/lightspeed.nvim', keys = '<Leader>j',
  --   config = load_conf '_lightspeed'
  -- },

  -- Indent multi text ( easy align : so many feature ), eg: `gaip* `
  {'junegunn/vim-easy-align', keys = '<Plug>(EasyAlign)'},

  -- Switch between single line and multiline
  {'AndrewRadev/splitjoin.vim', cmd = {'SplitjoinSplit', 'SplitjoinJoin'}},

  -- Comment lines
  {
    'tpope/vim-commentary', keys = {'\'', 'gc'},
    config = load_conf '_commentary'
  },

  ---------------------------------
  -- Treesitter
  ---------------------------------
  -- Better syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter', event = 'BufRead',
    config = load_conf '_treesitter',
    requires = {
      -- Context aware comment, usefull in case like html code inside js
      {'JoosepAlviste/nvim-ts-context-commentstring', after = 'vim-commentary'},
    }
  },

  -- Virtual text of current context
  -- {
  --   'code-biscuits/nvim-biscuits', after = 'nvim-treesitter',
  --   config = load_conf '_biscuits'
  -- },

  ---------------------------------
  -- Git
  ---------------------------------
  -- Magit but neovim
  {
    'TimUntersberger/neogit', keys = '<Leader>g',
    config = 'vim.cmd[[neogit]]',
  },

  -- Shows git diff sign
  {
    'lewis6991/gitsigns.nvim', event = 'BufRead',
    config = load_conf 'git._gitsigns',
  },

  ---------------------------------
  -- Other Utility
  ---------------------------------
  -- For handling sudo in neovim
  {
    'lambdalisue/suda.vim', keys = '<Leader>fs',
    config = function ()
      Map_n {"<Leader>fs", ":w suda://% <CR>"}
    end
  },
  ---------------------------------

  -- Paste image from clipboard (my plugin: ekickx/clipboard-image.nvim)
  {
    '~/Projects/clipboard-image.nvim', cmd = 'PasteImage',
    config = load_conf '_clipboard-image',
  },

  -- Show color on color code
  {
    'norcalli/nvim-colorizer.lua', keys = '<Leader>tc',
    config = function ()
      require 'colorizer'.setup()
      Map_n {'<Leader>tc', ':ColorizerToggle<CR>'}
    end
  },

  -- Smooth scrolling
  {'psliwka/vim-smoothie', event = 'BufRead'},

  -- Tree explorer
  {'kyazdani42/nvim-tree.lua', keys = '<Leader>tT', config = load_conf '_luatree'},

  -- Float terminal
  {
    'voldikss/vim-floaterm', keys = {'<Leader>t', '<Leader>T'},
    config = load_conf '_terminal'
  },

  ---------------------------------
  --
  -- Specific Language
  --
  ---------------------------------
  -- Go
  ---------------------------------
  {
    'fatih/vim-go', ft = 'go',
    config = 'vim.cmd[[packadd! vim-go]]',
  },
  ---------------------------------
  -- Lisp
  ---------------------------------
  {
    'eraserhd/parinfer-rust', run = 'cargo build --release',
    ft = {
      'fennel', 'clojure', 'scheme', 'lisp', 'racket', 'hy', 'janet', 'carp',
      'wast',
    },
    config = function () vim.cmd[[packadd! parinfer-rust]] end
  },
  ---------------------------------
  -- Markdown and note taking
  ---------------------------------
  -- Adds some nice extra's for working with markdown
  {
    'SidOfc/mkdx', ft = 'markdown',
  },

  -- Markdown previewer
  {
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    ft = 'markdown',
  },
  ---------------------------------
  -- Webdev
  ---------------------------------
  -- Emmet
  {
   'mattn/emmet-vim', ft = {'html', 'css', 'js', 'svelte'},
   setup = function ()
     vim.g.user_emmet_leader_key = ","
   end
  },
}

-- Install packer.nvim if doesn't exist
local install_path = Fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if Fn.empty(Fn.glob(install_path)) > 0 then
  Cmd('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Load packer
Cmd[[packadd! packer.nvim]]

-- Run packer
return require('packer').startup(function(use)
  for _, plugin in pairs(plugins) do
    use(plugin)
  end
end)
