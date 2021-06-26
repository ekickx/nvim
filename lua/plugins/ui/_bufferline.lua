vim.cmd[[packadd nvim-bufferline.lua]]

require'bufferline'.setup {
  options = {
    view = "multiwindow",
    numbers = "ordinal",
    number_style = "",
    mappings = true,
    show_buffer_close_icons = true
  },
}
