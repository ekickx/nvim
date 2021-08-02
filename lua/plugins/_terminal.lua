vim.g.floaterm_wintype = 'split'
vim.g.floaterm_height = 0.37
vim.g.floaterm_opener = 'drop'

local setmap = vim.api.nvim_set_keymap
setmap('n', '<Leader>fm', ':FloatermNew --wintype=float --width=0.7 --height=0.8 nnn<CR>', { noremap = true })
-- escape terminal
setmap('t', "<Leader>te", "<C-\\><C-n>", { noremap = true })
-- new term
setmap('n', '<Leader>tN', ':FloatermNew<CR>', { noremap = true })
setmap('t', "<Leader>tN", "<C-\\><C-n>:FloatermNew<CR>", { noremap = true })
-- toggle term
setmap('n', '<Leader>tt', ':FloatermToggle<CR>', { noremap = true })
setmap('t', "<Leader>tt", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true })
setmap('n', '<Leader>Tt', ':FloatermToggle<CR>', { noremap = true })
setmap('t', "<Leader>Tt", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true })
-- next term
setmap('n', '<Leader>tn', ':FloatermNext<CR>', { noremap = true })
setmap('t', "<Leader>tn", "<C-\\><C-n>:FloatermNext<CR>", { noremap = true })
-- prev term
setmap('n', '<Leader>tp', ':FloatermPrev<CR>', { noremap = true })
setmap('t', "<Leader>tp", "<C-\\><C-n>:FloatermPrev<CR>", { noremap = true })
