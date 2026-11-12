-- :fennel:1791305165
local _local_1_ = require("my.utils")
local cmd_21 = _local_1_["cmd!"]
local z = _local_1_["z"]
local fnl_conf = vim.fs.joinpath(vim.fn.stdpath("config"), "fnl", "my")
local function _2_(_241)
  return z(_241.args)
end
cmd_21("Z", _2_, {nargs = "*"})
local function _3_(_241)
  return vim.cmd.edit(vim.fs.joinpath(fnl_conf, _241.args))
end
local function _4_()
  local files = {}
  for name, type_ in vim.fs.dir(fnl_conf) do
    if (type_ == "file") then
      table.insert(files, name)
    else
    end
  end
  return files
end
return cmd_21("Config", _3_, {nargs = 1, complete = _4_})