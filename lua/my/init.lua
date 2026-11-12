-- :fennel:1791820588
local function g_21(...)
  if (0 ~= (#{...} % 2)) then
    return nil, "Args is odd, it needs to be even"
  else
    for i = 1, (#{...} / 2) do
      vim.g[({...})[((i * 2) - 1)]] = ({...})[(i * 2)]
    end
    return nil
  end
end
g_21("loaded_tutor_mode_plugin", 1, "loaded_spec", 1)
require("my.settings")
require("my.keymaps")
require("my.commands")
do
  local load = require("lz.n").load
  local p = require("my.plugins")
  load({p.devicons, p.sandwich, p.fundo, p.neoscroll, p.substitute, p["smart-splits"], p.terminal, p.wilder, p.emmet, p.pencil, p.conjure})
end
local load = require("my.plugins_old")
load.telescope()
load.mini()
return load.treesitter()