-- :fennel:1791820809
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
local function lz_map(mode, key, run, opt)
  local mode0 = {mode = vim.split(mode, "")}
  local opt0
  if ("string" == type(opt)) then
    opt0 = {desc = opt}
  else
    opt0 = opt
  end
  return vim.tbl_extend("keep", {key, run}, mode0, (opt0 or {}))
end
export.apm = function()
  packadd_21("vim-apm")
  local apm = require("vim-apm")
  apm:setup({})
  local function _3_()
    return apm:toggle_monitor()
  end
  return map_21("n", "<Leader>apm", _3_)
end
export.conjure = {"conjure", ft = {"clojure", "fennel"}}
local function _4_()
  return setup("nvim-web-devicons")
end
export.devicons = {"nvim-web-devicons", after = _4_}
local function _5_()
  vim.g["user_emmet_leader_key"] = ","
  return nil
end
export.emmet = {"emmet-vim", before = _5_, ft = {"html", "javascript", "javascriptreact", "typescript", "typescriptreact"}}
local function _6_()
  return packadd_21("promise-async")
end
local function _7_()
  return setup("fundo")
end
export.fundo = {"nvim-fundo", before = _6_, after = _7_, event = "DeferredUIEnter"}
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
local function _8_()
  return setup("neoscroll")
end
export.neoscroll = {"neoscroll.nvim", after = _8_, event = "DeferredUIEnter"}
local function _9_()
  return vim.cmd("PencilSoft")
end
export.pencil = {"vim-pencil", ft = "text", after = _9_}
export.sandwich = {"vim-sandwich"}
local function _10_()
  return setup("smart-splits")
end
export["smart-splits"] = {"smart-splits.nvim", after = _10_, keys = {lz_map("n", "<A-h>", "<cmd>SmartResizeLeft<CR>", "Resize pane"), lz_map("n", "<A-j>", "<cmd>SmartResizeDown<CR>", "Resize pane"), lz_map("n", "<A-k>", "<cmd>SmartResizeUp<CR>", "Resize pane"), lz_map("n", "<A-l>", "<cmd>SmartResizeRight<CR>", "Resize pane")}}
local function _11_()
  local s = require("substitute")
  s.setup()
  map_21("n", "x", s.operator, "Substitute")
  map_21("n", "xx", s.line, "Substitute")
  map_21("n", "X", s.eol, "Substitute")
  return map_21("x", "x", s.visual, "Substitute")
end
export.substitute = {"substitute.nvim", after = _11_, keys = {lz_map("n", "x"), lz_map("n", "xx"), lz_map("n", "X"), lz_map("x", "x")}}
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
local function _12_()
  return setup("nvim-terminal")
end
local function _13_()
  local term = require("nvim-terminal").DefaultTerminal
  return term:open()
end
export.terminal = {"nvim-terminal", after = _12_, keys = {{"<Leader>ot", _13_, desc = "Open Terminal"}}}
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
local function _14_()
  setup("wilder", {modes = {":", "/", "?"}})
  local wilder = require("wilder")
  return wilder.set_option("renderer", wilder.popupmenu_renderer(wilder.popupmenu_palette_theme({border = "rounded", ["max_height:"] = "75%", min_height = 0, prompt_position = "top", reverse = 0, highlighter = wilder.basic_highlighter(), highlights = {accent = wilder.make_hl("WilderAccent", "Pmenu", {{a = 1}, {a = 1}, {foreground = "#f4468f"}}), left = {" ", wilder.popupmenu_devicons()}}})))
end
export.wilder = {"wilder.nvim", after = _14_, keys = {":", "/", "?"}}
return export