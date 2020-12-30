lua << EOF
local lsp_conf = require('lspconfig')
lsp_conf.gopls.setup{}
lsp_conf.rust_analyzer.setup{}
EOF
