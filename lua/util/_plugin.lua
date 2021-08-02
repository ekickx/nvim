local M = {}

-- Check if plugin is installed
---@param plugin string plugin's name
M.is_installed = function (plugin)
  if _G.packer_plugins[plugin] then
    return true
  end
  return false
end

-- Check if plugin is loaded
---@param plugin string plugin's name
M.is_loaded = function (plugin)
  if _G.packer_plugins[plugin].loaded then
    return true
  end
  return false
end

return M
