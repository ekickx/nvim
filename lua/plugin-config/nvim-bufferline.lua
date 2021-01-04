vim.cmd[[packadd nvim-bufferline.lua]]

require'bufferline'.setup{
  options = {
    view = "multiwindow",
    numbers = "ordinal",
    number_style = "",
    mappings = true,
    show_buffer_close_icons = true
  },
  highlights = {
    fill = {
      guifg = comment_fg,
      guibg = "#212121"
    },
    background = {
      guifg = comment_fg,
      guibg = "#212121"
    },
    buffer_visible = {
      guifg = comment_fg,
      guibg = "#212121"
    },
    buffer_selected = {
      guifg = normal_fg,
      guibg = "#2d2d2d",
      gui = "italic"
    },
    separator = {
      guifg = "#3d5c7c",
      guibg = "#212121"
    },
    separator_selected = {
      guifg = "#6699cc",
      guibg = "#2d2d2d"
    },
    indicator_selected = {
      guifg = "#2d2d2d",
      guibg = "#2d2d2d"
    },
  }
}
