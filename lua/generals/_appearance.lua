local Module = {}

local hl = function(group, options)
  local bg = options.bg == nil and '' or 'guibg=' .. options.bg
  local fg = options.fg == nil and '' or 'guifg=' .. options.fg
  local gui = options.gui == nil and '' or 'gui=' .. options.gui

  vim.cmd(string.format('hi %s %s %s %s', group, bg, fg, gui))
end

Module.override_highlight = function(highlights)
  for _, highlight in pairs(highlights) do
    hl(highlight[1], highlight[2])
  end
end

-- Highlight I want to apply to all colorscheme
Module.default_highlight = {
  -- { 'Normal',       { bg =  'NONE'    }},
  -- { 'LineNr',       { bg =  'NONE'    }},
  -- { 'SignColumn',   { bg =  'NONE'    }},
  -- { "String",       { gui = 'NONE'    }},
  -- { 'Special',      { gui = 'NONE'    }},
  -- { 'Folded',       { gui = 'NONE'    }},
  -- { 'EndOfBuffer',  { bg  = 'NONE'    }},
  { 'Comment',      { gui = 'italic'  }},
}

-- Use true colors
vim.cmd('set termguicolors')

return Module
