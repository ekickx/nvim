vim.cmd[[packadd nvim-lspconfig]]
vim.cmd[[packadd nvim-lspinstall]]
vim.cmd[[packadd lspsaga.nvim]]

local load_conf = function (server, modules)
  -- Enable snippet support
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  -- Default config for all language server
  local default_conf = {
    capabilities = capabilities,
    on_init = function ()
      print('LSP started!')
    end,
  }

  local server_conf = default_conf
  if vim.tbl_contains(modules, server) then
    -- Available module
    local module = 'plugins.lsp._'..server

    -- Extend default config with config for specific language server
    server_conf = vim.tbl_deep_extend(
      'force', default_conf, require(module)
    )
  end
  return server_conf
end

local setup_servers = function()
  -- Available modules on plugins.lsp (config for specific lang server)
  local modules_list = {
    "lua"
  }

  -- Setup lspinstall
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()

  -- Load server and its module (config)
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup(
      load_conf(server, modules_list)
    )
  end
end

-- Setup servers
setup_servers()

-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
