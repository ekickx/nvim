vim.cmd[[packadd nvim-treesitter]]

require'nvim-treesitter.configs'.setup{
  ensure_installed = {
    "javascript", "typescript", "tsx", "jsdoc", "cpp", "jsonc",
    "html", "css", "lua", "c", "rust", "go", "java", "query",
    "python", "rst", "svelte", "json"
  },
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
    enable = false,
  },
}
