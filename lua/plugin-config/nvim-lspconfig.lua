vim.cmd[[packadd nvim-lspconfig]]

local lsp_conf = require('lspconfig')

-- Show message when lsp start
local custom_on_init = function()
  print('LSP started!')
end

-- Go
lsp_conf.gopls.setup{
  on_attach = on_attach,
  on_init = custom_on_init,
  root_dir = function() return vim.loop.cwd() end,
}

-- Rust
lsp_conf.rust_analyzer.setup{
  on_attach = on_attach,
  on_init = custom_on_init,
}

-- Lua
-- By default, lua-language-server doesn't have a cmd set
-- You must change the abosolute path manually
local sumneko_root = vim.fn.expand('$HOME/Projects/lua-language-server')

lsp_conf.sumneko_lua.setup{
  cmd = {
    sumneko_root .. "/bin/Linux/lua-language-server", "-E",
    sumneko_root .. "/main.lua"
  },
  runtime = {
    version = LuaJIT,
    path = vim.split(package.path, ";")
  },
  diagnostic = {
    enable = true,
    globals = {'vim'}
  },
  on_attach = on_attach,
  on_init = custom_on_init,
}

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
