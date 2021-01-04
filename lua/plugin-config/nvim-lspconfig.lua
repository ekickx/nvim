vim.cmd[[packadd nvim-lspconfig]]

local lsp_conf = require('lspconfig')
lsp_conf.gopls.setup{}
lsp_conf.rust_analyzer.setup{}
