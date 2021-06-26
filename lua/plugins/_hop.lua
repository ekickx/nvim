local setmap = vim.api.nvim_set_keymap

setmap('n', '<Leader>jc', ":HopChar1<CR>", { noremap = true })
setmap('n', '<Leader>jC', ":HopChar2<CR>", { noremap = true })
setmap('n', '<Leader>jl', ":HopLine<CR>", { noremap = true })
setmap('n', '<Leader>jp', ":HopPattern<CR>", { noremap = true })
setmap('n', '<Leader>jw', ":HopWord<CR>", { noremap = true })
