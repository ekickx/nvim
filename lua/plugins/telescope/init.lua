local setmap = vim.api.nvim_set_keymap

require('telescope').setup {
    extensions = {
        media_files = {
            filetypes = {"png", "jpg", "pdf", "jpeg"},
            find_cmd = "rg"
        }
    }
}
require('telescope').load_extension('media_files')

-- Find from filename
setmap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true })
-- Find from context - Live grep
setmap('n', '<Leader>fc', ':Telescope live_grep<CR>', { noremap = true })
-- switch branch
setmap('n', '<Leader>gb', ":lua require'telescope.builtin'.git_branches()", { noremap = true })
