local hl = function(group, options)
  local bg = options.bg == nil and '' or 'guibg=' .. options.bg
  local fg = options.fg == nil and '' or 'guifg=' .. options.fg
  local gui = options.gui == nil and '' or 'gui=' .. options.gui

  vim.cmd(string.format('hi %s %s %s %s', group, bg, fg, gui))
end

ColorUtil = {}

ColorUtil.override_gruvbox = function()
  local highlights = {
    -- normal stuff
    {'Normal', { bg = 'NONE' }},
    {'Comment', { gui = 'italic' }},
    {'SignColumn', { bg = 'NONE' }},
    {'ColorColumn', { bg = '#3C3836' }},
    {'Floaterm', { bg = '#242424' }},
    {'FloatermBorder', { bg = 'NONE' }},
    {'FloatermNC', { gui = 'italic', fg = 'gray' }},
  }

  for _, highlight in pairs(highlights) do
    hl(highlight[1], highlight[2])
  end
end

-- automatically override colourscheme
vim.cmd('augroup MyColor')
vim.cmd('au!')
vim.cmd('au ColorScheme gruvbox8 call v:lua.ColorUtil.override_gruvbox()')
vim.cmd('augroup END')

vim.cmd('colorscheme gruvbox8')

-- Use true colors
vim.cmd('set termguicolors')
