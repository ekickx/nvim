-- :fennel:1791340736
local _local_1_ = require("my.utils")
local map_21 = _local_1_["map!"]
local packadd_21 = _local_1_["packadd!"]
local augroup_21 = _local_1_["augroup!"]
local export = {}
local function setup(name, _3fconfig)
  local plugin = require(name)
  local config = (_3fconfig or {})
  return plugin.setup(config)
end
export.apm = function()
  packadd_21("vim-apm")
  local apm = require("vim-apm")
  apm:setup({})
  local function _2_()
    return apm:toggle_monitor()
  end
  return map_21("n", "<Leader>apm", _2_)
end
export.devicons = function()
  packadd_21("nvim-web-devicons")
  return setup("nvim-web-devicons")
end
export.emmet = function()
  vim.g["user_emmet_leader_key"] = ","
  return packadd_21("emmet-vim")
end
export.fundo = function()
  packadd_21("promise-async")
  packadd_21("nvim-fundo")
  return setup("fundo")
end
export.klog = function()
  return packadd_21("vim-klog")
end
export.leap = function()
  packadd_21("leap.nvim")
  local leap = require("leap")
  return leap.create_default_mappings()
end
export.mini = function(modules)
  packadd_21("mini.nvim")
  setup("mini.pairs")
  setup("mini.files")
  map_21("n", "<Leader>of", _G.MiniFiles.open, "Open [mini]files")
  setup("mini.comment")
  local hp = require("mini.hipatterns")
  return hp.setup({highlighters = {hex_color = hp.gen_highlighter.hex_color()}})
end
export.neoscroll = function()
  packadd_21("neoscroll.nvim")
  return setup("neoscroll")
end
export.pencil = function()
  packadd_21("vim-pencil")
  return augroup_21("pencil", {"FileType", "text", "call pencil#init()"})
end
export.sandwich = function()
  return packadd_21("vim-sandwich")
end
export["smart-splits"] = function()
  packadd_21("smart-splits.nvim")
  local ss = require("smart-splits")
  ss.setup({})
  map_21("n", "<A-h>", ss.resize_left, "Resize pane")
  map_21("n", "<A-j>", ss.resize_down, "Resize pane")
  map_21("n", "<A-k>", ss.resize_up, "Resize pane")
  return map_21("n", "<A-l>", ss.resize_right, "Resize pane")
end
export.substitute = function()
  packadd_21("substitute.nvim")
  local s = require("substitute")
  s.setup()
  map_21("n", "x", s.operator, "Substitute")
  map_21("n", "xx", s.line, "Substitute")
  map_21("n", "X", s.eol, "Substitute")
  return map_21("x", "x", s.visual, "Substitute")
end
export.telescope = function()
  packadd_21("plenary.nvim")
  packadd_21("telescope.nvim")
  setup("telescope", {defaults = {prompt_prefix = " \239\145\171  ", sorting_strategy = "ascending", layout_config = {horizontal = {prompt_position = "top"}}}})
  map_21("n", "<Leader>ff", ":Telescope find_files<cr>", "Find files")
  map_21("n", "<Leader>fb", ":Telescope buffers<cr>", "Find buffers")
  map_21("n", "<Leader>fc", ":Telescope live_grep<cr>", "Find context")
  map_21("n", "<Leader>fh", ":Telescope help_tags<cr>", "Find help tags")
  return map_21("n", "<Leader>fk", ":Telescope keymaps<cr>", "Find keymaps")
end
export.terminal = function()
  packadd_21("nvim-terminal")
  setup("nvim-terminal")
  local term = require("nvim-terminal").DefaultTerminal
  local function _3_()
    return term:open()
  end
  return map_21("n", "<Leader>ot", _3_, "Open terminal")
end
export.toggleterm = function()
  packadd_21("toggleterm.nvim")
  return setup("toggleterm", {open_mapping = "<Leader>ot", insert_mappings = false})
end
export.treesitter = function()
  packadd_21("nvim-treesitter")
  return setup("nvim-treesitter.configs", {ensure_installed = {"c", "lua", "fennel", "python"}, highlight = {enable = true}})
end
export["typst-preview"] = function()
  packadd_21("typst-preview.nvim")
  return setup("typst-preview")
end
export.wilder = function()
  packadd_21("wilder.nvim")
  setup("wilder", {modes = {":", "/", "?"}})
  local wilder = require("wilder")
  return wilder.set_option("renderer", wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({border = "rounded", ["max_height:"] = "75%", min_height = 0, prompt_position = "top", reverse = 0, highlighter = wilder.basic_highlighter(), highlights = {accent = wilder.make_hl("WilderAccent", "Pmenu", {{a = 1}, {a = 1}, {foreground = "#f4468f"}}), left = {" ", wilder.popupmenu_devicons()}}})))
end
return export