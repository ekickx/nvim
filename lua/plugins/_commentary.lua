local setmap = vim.api.nvim_set_keymap
setmap("n", "'", ":Commentary<CR>", { noremap = true })
setmap("v", "'", ":Commentary<CR>", { noremap = true })
