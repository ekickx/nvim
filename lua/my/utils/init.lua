-- :fennel:1762313418
local export = {}
export["packadd!"] = function(package)
  return vim.cmd(("packadd " .. package))
end
export["map!"] = function(mode, key, run, opt)
  local mode0 = vim.split(mode, "")
  local opt0
  if ("string" == type(opt)) then
    opt0 = {desc = opt}
  else
    opt0 = opt
  end
  return vim.keymap.set(mode0, key, run, opt0)
end
export["cmd!"] = function(name, run, opt)
  local opt0
  if ("nil" == type(opt)) then
    opt0 = {}
  else
    if ("string" == type(opt)) then
      opt0 = {desc = opt}
    else
      opt0 = opt
    end
  end
  return vim.api.nvim_create_user_command(name, run, opt0)
end
local function autocmd_21(events, pattern, callback)
  local pattern0
  if ("string" == type(pattern)) then
    pattern0 = {pattern}
  else
    pattern0 = pattern
  end
  local callback0
  if ("string" == type(callback)) then
    local function _5_()
      return vim.cmd(callback)
    end
    callback0 = _5_
  else
    callback0 = callback
  end
  return vim.api.nvim_create_autocmd(events, {pattern = pattern0, callback = callback0})
end
export["augroup!"] = function(name, ...)
  local group = vim.api.nvim_create_augroup(name, {clear = true})
  for _, _7_ in ipairs(...) do
    local event = _7_[1]
    local pattern = _7_[2]
    local callback = _7_[3]
    local _8_
    if ("string" == type(callback)) then
      local function _9_()
        return vim.cmd(callback)
      end
      _8_ = _9_
    else
      _8_ = callback
    end
    vim.api.nvim_create_autocmd(event, {pattern = pattern, callback = _8_, group = group})
  end
  return nil
end
export.z = function(query)
  local output = vim.system({"zoxide", "query", query}):wait()
  local path = vim.split(output.stdout, "\n")[1]
  if (0 == output.code) then
    vim.cmd.tcd(path)
    return vim.system({"zoxide", "add", path})
  else
    return nil
  end
end
return export