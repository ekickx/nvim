return {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ";")
      },
      diagnostics = {
        enable = true,
        globals = {'vim', 'love'}
      },
      workspace = {
        library = {
          [Fn.expand('$VIMRUNTIME/lua')] = true,
          [Fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
        },
      },
    },
  },
}
