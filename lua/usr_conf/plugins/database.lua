local db = {}

db['dep'] = {
  repo = 'chiyadev/dep',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['autopairs(lua)'] = {
  repo = 'windwp/nvim-autopairs',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    local npairs = require('nvim-autopairs')
    local Rule   = require('nvim-autopairs.rule')
    npairs.setup()

    -- Before: (item)=
    -- Insert: >
    -- After: (item)=> { }
    Rule('%(.*%)%s*%=>$', ' {  }', { 'typescript', 'typescriptreact', 'javascript' })
      :use_regex(true)
      :set_end_pair_length(2)
  end,
}

db['bufferline'] = {
  repo = 'akinsho/bufferline.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    local sidebar = { text = 'Sidebar', highlight = 'PMenuSelBold' }
    require('bufferline').setup {
      options = {
        numbers = function(opts)
          return string.format('%s.', opts.ordinal)
        end,
        close_command = function(bufnum)
          if vim.g.loaded_sayoara == 1 then
            local bufname = vim.fn.bufname(bufnum)
            vim.cmd('Sayonara! ' .. bufname)
          end
        end,
        right_mouse_command = function(bufnum)
          if vim.g.loaded_sayoara == 1 then
            local bufname = vim.fn.bufname(bufnum)
            vim.cmd('Sayonara ' .. bufname)
          end
        end,
        offsets = {
          vim.tbl_extend('force', { filetype = 'fern' }, sidebar),
          vim.tbl_extend('force', { filetype = 'NvimTree' }, sidebar),
        },
        show_buffer_close_icons = true,
      },
    }

    -- Keymap
    Map_n { '<Leader>bn', ':BufferLineCycleNext<CR>' }
    Map_n { '<Leader>bp', ':BufferLineCyclePrev<CR>' }
    for i = 1, 10 do
      Map_n {
        '<Leader>' .. i,
        '<Cmd>' .. 'BufferLineGoToBuffer ' .. i .. '<CR>',
        { silent = true },
      }
    end
  end,
}

db['clever-f'] = {
  repo = 'rhysd/clever-f.vim'
}

db['clipboard-image'] = {
  repo = 'ekickx/clipboard-image.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
  -- url = '~/Projects/clipboard-image.nvim',
}

db['comment'] = {
  repo = 'numToStr/Comment.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('Comment').setup()
  end,
}

db['crease'] = {
  repo = 'scr1pt0r/crease.vim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.g.crease_config = {}
    local config = vim.g.crease_config

    config.is_commented = function()
      -- code
    end

    vim.g.crease_foldtext = {
      default = [[  %l  : %t ]],
    }
  end,
}

db['doom-one'] = {
  repo = 'NTBBloodbath/doom-one.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.cmd 'colorscheme doom-one'
  end,
}

db['easy-align'] = {
  repo = 'junegunn/vim-easy-align',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['fern'] = {
  repo = 'lambdalisue/fern.vim',
  dependencies = {
    'antoinemadec/FixCursorHold.nvim',
  },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.cmd [[
function! s:init_fern()
    silent! nunmap <buffer> <C-L>
    nnoremap <buffer> <Leader>of <cmd>q<cr>
endfunction

augroup fern-custom
  au!
  au Filetype fern call s:init_fern()
augroup END
]]

    Map_n { '<Leader>of', '<Cmd>Fern . -drawer<CR>' }
  end,
}

db['filetype'] = {
  repo = 'nathom/filetype.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.cmd [[runtime! ftdetect/*.vim]]
    vim.cmd [[runtime! ftdetect/*.lua]]
  end,
}

db['fix cursor-hold'] = {
  repo = 'antoinemadec/FixCursorHold.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = function()
    vim.g.cursorhold_updatetime = 100
  end,
  on_load = nil,
}

db['galaxyline'] = {
  repo = 'NTBBloodbath/galaxyline.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    local gl = require 'galaxyline'
    local u = require 'usr_conf.utils'
    require 'galaxyline.themes.eviline'
    gl.short_line_list = u.tbl_append(gl.short_line_list, {
      'fern',
      'startuptime',
      'toggleterm',
    })
  end,
}

db['gitsigns'] = {
  repo = 'lewis6991/gitsigns.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  dependants = {},
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('gitsigns').setup {
      signs = {
        add = { text = '┃' },
        change = { text = '┃' },
        delete = { text = '┃' },
      },
    }
  end,
}

db['hlslens'] = {
  repo = 'kevinhwang91/nvim-hlslens',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['markdown-preview'] = {
  repo = 'iamcco/markdown-preview.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = function()
    vim.fn['mkdp#util#install']()
  end,
  on_init = nil,
  on_load = nil,
}

db['parinfer(lua)'] = {
  repo = 'gpanders/nvim-parinfer',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['rose-pine'] = {
  repo = 'rose-pine/neovim',
  alias = 'rose-pine',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.cmd 'colorscheme rose-pine'
  end,
}

db['sandwich'] = {
  repo = 'machakann/vim-sandwich',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['sayonara'] = {
  repo = 'mhinz/vim-sayonara',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    Map_n { '<Leader>bx', ':Sayonara!<CR>' }
  end,
}

db['scrollbar'] = {
  repo = 'dstein64/nvim-scrollview',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['shade'] = {
  repo = 'sunjon/Shade.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('shade').setup {
      keys = {
        toggle = '<Leader>S',
      },
    }
  end,
}

db['sidebar'] = {
  repo = 'sidebar-nvim/sidebar.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('sidebar-nvim').setup {
      open = true,
      sections = { 'git-status' },
    }
  end,
}

db['smoothie'] = {
  repo = 'psliwka/vim-smoothie',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['sort-motion'] = {
  repo = 'christoomey/vim-sort-motion',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = function()
    vim.g.sort_motion_visual_block_command = 'Vissort'
  end,
  on_load = nil,
}

db['stabilize'] = {
  repo = 'luukvbaal/stabilize.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('stabilize').setup()
  end,
}

db['startuptimer'] = {
  repo = 'dstein64/vim-startuptime',
  dependency = {},
  dependant = {},
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['suda'] = {
  repo = 'lambdalisue/suda.vim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['sqlite'] = {
  repo = 'tami5/sqlite.lua',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['targets'] = {
  repo = 'wellle/targets.vim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['telescope'] = {
  repo = 'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-lua/popup.nvim',
    'kyazdani42/nvim-web-devicons',
  },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    Map_n { '<Leader>ff', '<Cmd>Telescope find_files theme=dropdown<CR>' }
    Map_n { '<Leader>fc', '<Cmd>Telescope live_grep theme=dropdown<CR>' }
    Map_n { '<Leader>fk', '<Cmd>Telescope keymaps theme=dropdown<CR>' }
    Map_n { '<Leader>/', '<Cmd>Telescope live_grep theme=dropdown<CR>' }
    Map_n { '<Leader><Space>', '<Cmd>Telescope<CR>' }
  end,
}

db['telescope-frecency'] = {
  repo = 'nvim-telescope/telescope-frecency.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'tami5/sqlite.lua',
  },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    local telescope = require 'telescope'
    telescope.setup {
      extensions = {
        frecency = {
          show_scores = true,
        },
      },
    }
    telescope.load_extension 'frecency'
  end,
}

db['telescope-fzf-native'] = {
  repo = 'nvim-telescope/telescope-fzf-native.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  dependants = nil,
  on_update = function()
    os.execute 'make'
  end,
  on_init = nil,
  on_load = function()
    require('telescope').load_extension 'fzf'
  end,
}

db['terminal'] = {
  repo = 'akinsho/toggleterm.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('toggleterm').setup {
      open_mapping = '<Leader>ot',
      insert_mappings = false,
    }
    -- Terminal window mapping
    Map_t { '<Esc><Esc>', [[<C-\><C-n>]] }
  end,
}

db['treesitter'] = {
  repo = 'nvim-treesitter/nvim-treesitter',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'c',
        'cpp',
        'css',
        'go',
        'html',
        'javascript',
        'json',
        'jsonc',
        'lua',
        'markdown',
        'python',
        'rust',
        'svelte',
        'zig',
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = false,
      },
    }
  end,
}

db['treesitter-autotag'] = {
  repo = 'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require'nvim-treesitter.configs'.setup {
      autotag = {
        enable = true,
      }
    }
  end,
}

db['treesitter-context'] = {
  repo = 'romgrk/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('treesitter-context').setup()
  end,
}

db['treesitter-textsubjects'] = {
  repo = 'RRethy/nvim-treesitter-textsubjects',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('nvim-treesitter.configs').setup {
      textsubjects = {
        enable = true,
        keymaps = {
          ['.'] = 'textsubjects-smart',
          [';'] = 'textsubjects-container-outer',
        },
      },
    }
  end,
}

db['treesitter-context-comment'] = {
  repo = 'JoosepAlviste/nvim-ts-context-commentstring',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    require('nvim-treesitter.configs').setup {
      context_commentstring = {
        enable = true,
      },
    }
  end,
}

db['true-zen'] = {
  repo = 'Pocco81/TrueZen.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    local zen = require 'true-zen'
    zen.setup()
  end,
}

db['wilder'] = {
  repo = 'gelguy/wilder.nvim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = function()
    vim.fn['wilder#setup'] {
      modes = { '/', ':', '?' },
    }
    vim.cmd [[
call wilder#set_option('renderer',
\  wilder#popupmenu_renderer(wilder#popupmenu_border_theme({
\    'highlights': {'border': 'Normal',},
\    'border': 'rounded',
\  })))
    ]]
  end,
}

db['word-motion'] = {
  repo = 'chaoren/vim-wordmotion',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['yuck'] = {
  repo = 'elkowar/yuck.vim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

db['yue'] = {
  repo = 'pigpigyyy/yuescript-vim',
  dependencies = nil,
  dependants = nil,
  on_update = nil,
  on_init = nil,
  on_load = nil,
}

return db
