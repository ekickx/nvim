vim.cmd[[packadd neuron.nvim]]

require'neuron'.setup {
    virtual_titles = true,
    mappings = false,
    neuron_dir = "~/Documents/neuron",
}
