" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/var/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/var/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/var/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/var/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/var/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["clipboard-image.nvim"] = {
    commands = { "PasteImage" },
    config = { "require'plugins._clipboard-image'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/clipboard-image.nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/emmet-vim"
  },
  ["format.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/format.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "require'plugins.ui._galaxyline'" },
    load_after = {
      ["nvim-base16"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "require'plugins.git._gitsigns'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    commands = { "Goyo" },
    config = { "require'plugins.ui._goyo'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/goyo.vim"
  },
  ["hop.nvim"] = {
    keys = { { "", "<Leader>j" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/hop.nvim"
  },
  ["lspsaga.nvim"] = {
    keys = { { "", "<Leader>l" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  mkdx = {
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/mkdx"
  },
  neogit = {
    config = { "vim.cmd[[neogit]]" },
    keys = { { "", "<Leader>g" } },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/neogit"
  },
  ["nvim-base16"] = {
    after = { "galaxyline.nvim", "nvim-bufferline.lua", "nvim-scrollview" },
    config = { "require'plugins.ui._base16'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-base16"
  },
  ["nvim-bufferline.lua"] = {
    config = { "require'plugins.ui._bufferline'" },
    load_after = {
      ["nvim-base16"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nm\0\0\3\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0005\2\4\0B\0\2\1K\0\1\0\1\3\0\0\15<Leader>tc\25:ColorizerToggle<CR>\nMap_n\nsetup\14colorizer\frequire\0" },
    keys = { { "", "<Leader>tc" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "pears.nvim" },
    after_files = { "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe.vim" },
    config = { "require'plugins._completion'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-hlslens"] = {
    config = { "require'plugins.ui._hlslens'" },
    keys = { { "", "/" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    after = { "nvim-lspinstall" },
    config = { "require'plugins.lsp'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-scrollview"] = {
    config = { "vim.cmd[[packadd! nvim-scrollview]]" },
    load_after = {
      ["nvim-base16"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    config = { "require'plugins._luatree'" },
    keys = { { "", "<Leader>tT" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require'plugins._treesitter'" },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    load_after = {
      ["vim-commentary"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    commands = { "NvimTreeToggle" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["parinfer-rust"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\27packadd! parinfer-rust\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/parinfer-rust"
  },
  ["pears.nvim"] = {
    config = { "require'plugins._pears'" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/pears.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["presence.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/presence.nvim"
  },
  ["splitjoin.vim"] = {
    commands = { "SplitjoinSplit", "SplitjoinJoin" },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/splitjoin.vim"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["suda.vim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0005\2\1\0B\0\2\1K\0\1\0\1\3\0\0\15<Leader>fs\21:w suda://% <CR>\nMap_n\0" },
    keys = { { "", "<Leader>fs" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/suda.vim"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require'plugins.telescope'" },
    keys = { { "", "<Leader>f" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-commentary"] = {
    after = { "nvim-ts-context-commentstring" },
    config = { "require'plugins._commentary'" },
    keys = { { "", "'" }, { "", "gc" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-easy-align"] = {
    keys = { { "", "<Plug>(EasyAlign)" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-easy-align"
  },
  ["vim-floaterm"] = {
    config = { "require'plugins._terminal'" },
    keys = { { "", "<Leader>t" }, { "", "<Leader>T" } },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-floaterm"
  },
  ["vim-go"] = {
    config = { "vim.cmd[[packadd! vim-go]]" },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-matchup"] = {
    after_files = { "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-matchup/after/plugin/matchit.vim" },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-matchup"
  },
  ["vim-sandwich"] = {
    keys = { { "", "s" } },
    loaded = false,
    needs_bufread = true,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-sandwich"
  },
  ["vim-smoothie"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-smoothie"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "require'plugins.ui._which-key'" },
    loaded = false,
    needs_bufread = false,
    path = "/var/home/ekickx/.local/share/nvim/site/pack/packer/opt/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: emmet-vim
time([[Setup for emmet-vim]], true)
try_loadstring("\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\6,\26user_emmet_leader_key\6g\bvim\0", "setup", "emmet-vim")
time([[Setup for emmet-vim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
vim.cmd [[command! -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-web-devicons'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file SplitjoinSplit lua require("packer.load")({'splitjoin.vim'}, { cmd = "SplitjoinSplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file SplitjoinJoin lua require("packer.load")({'splitjoin.vim'}, { cmd = "SplitjoinJoin", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file PasteImage lua require("packer.load")({'clipboard-image.nvim'}, { cmd = "PasteImage", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file Goyo lua require("packer.load")({'goyo.vim'}, { cmd = "Goyo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> <Leader>l <cmd>lua require("packer.load")({'lspsaga.nvim'}, { keys = "<lt>Leader>l", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>f <cmd>lua require("packer.load")({'telescope.nvim'}, { keys = "<lt>Leader>f", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> s <cmd>lua require("packer.load")({'vim-sandwich'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>g <cmd>lua require("packer.load")({'neogit'}, { keys = "<lt>Leader>g", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Plug>(EasyAlign) <cmd>lua require("packer.load")({'vim-easy-align'}, { keys = "<lt>Plug>(EasyAlign)", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>tc <cmd>lua require("packer.load")({'nvim-colorizer.lua'}, { keys = "<lt>Leader>tc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>fs <cmd>lua require("packer.load")({'suda.vim'}, { keys = "<lt>Leader>fs", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>T <cmd>lua require("packer.load")({'vim-floaterm'}, { keys = "<lt>Leader>T", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>t <cmd>lua require("packer.load")({'vim-floaterm'}, { keys = "<lt>Leader>t", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>tT <cmd>lua require("packer.load")({'nvim-tree.lua'}, { keys = "<lt>Leader>tT", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <Leader>j <cmd>lua require("packer.load")({'hop.nvim'}, { keys = "<lt>Leader>j", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> ' <cmd>lua require("packer.load")({'vim-commentary'}, { keys = "'", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> / <cmd>lua require("packer.load")({'nvim-hlslens'}, { keys = "/", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType clojure ++once lua require("packer.load")({'parinfer-rust'}, { ft = "clojure" }, _G.packer_plugins)]]
vim.cmd [[au FileType racket ++once lua require("packer.load")({'parinfer-rust'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType lisp ++once lua require("packer.load")({'parinfer-rust'}, { ft = "lisp" }, _G.packer_plugins)]]
vim.cmd [[au FileType janet ++once lua require("packer.load")({'parinfer-rust'}, { ft = "janet" }, _G.packer_plugins)]]
vim.cmd [[au FileType carp ++once lua require("packer.load")({'parinfer-rust'}, { ft = "carp" }, _G.packer_plugins)]]
vim.cmd [[au FileType wast ++once lua require("packer.load")({'parinfer-rust'}, { ft = "wast" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim', 'mkdx'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType js ++once lua require("packer.load")({'emmet-vim'}, { ft = "js" }, _G.packer_plugins)]]
vim.cmd [[au FileType hy ++once lua require("packer.load")({'parinfer-rust'}, { ft = "hy" }, _G.packer_plugins)]]
vim.cmd [[au FileType css ++once lua require("packer.load")({'emmet-vim'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'emmet-vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType scheme ++once lua require("packer.load")({'parinfer-rust'}, { ft = "scheme" }, _G.packer_plugins)]]
vim.cmd [[au FileType svelte ++once lua require("packer.load")({'emmet-vim'}, { ft = "svelte" }, _G.packer_plugins)]]
vim.cmd [[au FileType fennel ++once lua require("packer.load")({'parinfer-rust'}, { ft = "fennel" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-compe'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'gitsigns.nvim', 'vim-smoothie', 'nvim-lspconfig', 'nvim-treesitter'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'which-key.nvim', 'nvim-base16'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au CursorMoved * ++once lua require("packer.load")({'vim-matchup', 'presence.nvim'}, { event = "CursorMoved *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /var/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
