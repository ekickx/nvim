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
local package_path_str = "/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ekickx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["committia.vim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/committia.vim"
  },
  ["format.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/format.nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  indentLine = {
    after_files = { "/home/ekickx/.local/share/nvim/site/pack/packer/opt/indentLine/after/plugin/indentLine.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/indentLine"
  },
  ["lexima.vim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/lexima.vim"
  },
  mkdx = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/mkdx"
  },
  ["neuron.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/neuron.nvim"
  },
  ["nvim-bufferline.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-hlslens"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-hlslens"
  },
  ["nvim-lspconfig"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  playground = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/suda.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-floaterm"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/vim-gruvbox8"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-which-key"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/ekickx/.local/share/nvim/site/pack/packer/opt/vim-which-key"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
