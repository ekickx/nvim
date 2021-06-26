vim.cmd[[packadd galaxyline.nvim]]

local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#242424',
  yellow = '#fabd2f',
  cyan = '#008080',
  darkblue = '#081633',
  green = '#608B4E',
  orange = '#FF8800',
  purple = '#5d4d7a',
  magenta = '#d16d9e',
  grey = '#c0c0c0',
  blue = '#569CD6',
  red = '#D16969'
}

local buffer_not_empty = function()
  if Fn.empty(Fn.expand('%:t')) ~= 1 then
    return true
  end
  return false
end

table.insert(gls.left, {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local alias = {n = 'NORMAL',
                     i = 'INSERT',
                     v = 'VISUAL',
                     [''] = 'VISUAL',
                     V = 'VISUAL',
                     c = 'COMMAND',
                     t = 'TERMINAL'}
      local mode_color = {n = colors.purple,
                          i = colors.green,
                          v = colors.blue,
                          [''] = colors.blue,
                          V = colors.blue,
                          c = colors.purple,
                          no = colors.magenta,
                          s = colors.orange,
                          S = colors.orange,
                          [''] = colors.orange,
                          ic = colors.yellow,
                          R = colors.red,
                          Rv = colors.red,
                          cv = colors.red,
                          ce=colors.red,
                          r = colors.cyan,
                          rm = colors.cyan,
                          ['r?'] = colors.cyan,
                          ['!']  = colors.red,
                          t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guibg='..mode_color[Fn.mode()])
      return '  '..alias[Fn.mode()]..' '
    end,
    separator = ' ',
    separator_highlight = {colors.yellow,function()
      if not buffer_not_empty() then
        return colors.bg
      end
      return colors.bg
    end},
    highlight = {colors.grey,colors.bg,'bold'},
  },
})

table.insert(gls.left, {
  GitIcon = {
    provider = function()
      if Fn.mode() == 't' then return '' else return ' ' end
    end,
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {colors.orange,colors.bg},
  }
})
table.insert(gls.left, {
  GitBranch = {
    provider = 'GitBranch',
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    condition = buffer_not_empty,
    highlight = {colors.grey,colors.bg},
  }
})

local checkwidth = function()
  local squeeze_width  = Fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

table.insert(gls.left, {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.green,colors.bg},
  }
})
table.insert(gls.left, {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
})
table.insert(gls.left, {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    -- separator = ' ',
    -- separator_highlight = {colors.purple,colors.bg},
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
})
table.insert(gls.left, {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
})
table.insert(gls.left, {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
})
table.insert(gls.left, {
  Space = {
    provider = function () return '' end
  }
})
table.insert(gls.left, {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
})
table.insert(gls.left, {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '   ',
    highlight = {colors.blue,colors.bg},
  }
})
table.insert(gls.left, {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '   ',
    highlight = {colors.orange,colors.bg},
  }
})
gls.right[1]= {
  FileFormat = {
    provider = 'FileFormat',
    separator = ' ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.grey,colors.bg},
  }
}
gls.right[2] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' | ',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.grey,colors.bg},
  },
}
gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' |',
    separator_highlight = {colors.bg,colors.bg},
    highlight = {colors.grey,colors.bg},
  }
}
gls.right[4] = {
  ScrollBar = {
    provider = 'ScrollBar',
    highlight = {colors.yellow,colors.purple},
  }
}

gls.short_line_left[1] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.purple,colors.bg},
    highlight = {colors.purple,colors.bg}
  }
}
