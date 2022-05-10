local M = {}
local U = require 'usr_conf.utils'

M.dep = {}

M.dep.bootstrap = function()
  local path = vim.fn.stdpath 'data' .. '/site/pack/deps/opt/dep'

  if vim.fn.empty(vim.fn.glob(path)) > 0 then
    vim.fn.system {
      'git',
      'clone',
      '--depth=1',
      'https://github.com/chiyadev/dep',
      path,
    }
  end

  vim.cmd 'packadd dep'
end

M.dep.get_plugin_from_db = function(plugins)
  local db = require 'usr_conf.plugins.database'
  local plugins_data = {}
  for _, plugin in pairs(plugins) do
    table.insert(plugins_data, {
      db[plugin].repo,
      db[plugin].on_load,
      setup = db[plugin].on_init,
      config = db[plugin].on_update,
      as = db[plugin].alias,
      requires = db[plugin].dependencies,
      deps = db[plugin].dependants,
    })
  end
  return plugins_data
end

M.dep.future_plugins = {}

M.dep.load = function(plugins)
  plugins = vim.tbl_flatten(plugins)
  M.dep.future_plugins = U.tbl_append(M.dep.future_plugins, plugins)
  plugins = M.dep.future_plugins
  -- print(vim.inspect(plugins))
  plugins = M.dep.get_plugin_from_db(plugins)
  require 'dep'(plugins)
end

M.dep.defer_load = function(plugins, wait_time)
  wait_time = wait_time or 0
  vim.defer_fn(function()
    M.dep.load(plugins)
  end, wait_time)
end

M.jetpack = {}

M.jetpack.bootstrap = function()
  local path = vim.fn.stdpath 'data' .. '/site/pack/jetpack/%s/vim-jetpack'
  local src, opt = path:format('src'), path:format('opt')
  print(opt)

  if vim.fn.empty(vim.fn.glob(src)) > 0 then
    vim.fn.system {
      'git', 'clone', '--depth=1',
      'https://github.com/tani/vim-jetpack',
      src
    }
  end

  if vim.fn.empty(vim.fn.glob(opt)) > 0 then
    vim.fn.mkdir(vim.fn.stdpath 'data' .. '/site/pack/jetpack/opt', 'p')
    vim.fn.system {
      'ln', '-sf', src, opt
    }
  end

  vim.cmd 'packadd vim-jetpack'
end

M.jetpack.load = function(plugins)
  local db = require 'usr_conf.plugins.database'
  local plugins_data = {}
  plugins = vim.tbl_flatten(plugins)
  for _, plugin in pairs(plugins) do
    if type(db[plugin].on_init) == 'function' then
      db[plugin].on_init()
    end

    table.insert(plugins_data, {
      db[plugin].repo,
      run = db[plugin].on_update,
      as = db[plugin].alias,
      opt = 1
    })

    vim.schedule(function()
      if type(db[plugin].on_load) == 'function' then
        db[plugin].on_load()
      end
    end)
  end

  require('jetpack').setup(plugins_data)
end

return M
