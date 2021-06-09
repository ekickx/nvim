vim.cmd[[packadd nvim-compe]]

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
  };
}
