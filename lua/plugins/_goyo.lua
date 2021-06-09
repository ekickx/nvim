local M = {}

-- What to do when enter goyo
function M.goyo_enter()
  -- showmode
  vim.o.showmode = true
  -- disable statusline
  require'galaxyline'.disable_galaxyline()
  vim.cmd[[highlight StatusLine guifg=NONE]]
  -- disable listchars
  vim.o.listchars = ''
end

-- What to do when leave goyo
function M.goyo_leave()
  -- enable statusline
  require'galaxyline'.load_galaxyline()
  -- restore setting's value
  require'setting'
end

-- Autocommand when enter and leave goyo
vim.cmd[[au! User GoyoEnter nested lua require'plugin-config.goyo'.goyo_enter()]]
vim.cmd[[au! User GoyoLeave nested lua require'plugin-config.goyo'.goyo_leave()]]

return M
