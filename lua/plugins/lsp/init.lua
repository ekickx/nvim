local load_conf = function (server)
  return require('plugins.lsp.servers._'..server)
end

local setup_server = function (server_conf)
  -- Enable snippet support
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.completion.completionItem.snippetSupport = true

  -- Default config for all language server
  local default_conf = {
    capabilities = capabilities,
    on_init = function ()
      print('LSP started!')
    end,
    on_attach = function () require('plugins.lsp._keymaps') end
  }

  if server_conf ~= nil and not vim.tbl_isempty(server_conf) then
    -- Merge default_conf with server_conf
    server_conf = vim.tbl_deep_extend(
      'force', default_conf, server_conf
    )
    return server_conf
  end
  return default_conf
end

local setup_servers = function()
  local servers_conf = {
    lua = load_conf('lua'),
    go = {root_dir = vim.loop.cwd},
  }

  -- Setup lspinstall
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()

  -- Load server and its config
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup(
      setup_server(servers_conf[server])
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
