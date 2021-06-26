> **NOTE**: This config now only compatible for version v0.5+. For lower version, 
see [nvim-stable branch](https://github.com/ekickx/mmm-nvimrc/tree/nvim-stable).

> A good config is a config made by yourself. This repo's intention is to share
how I manage my config so you can use it as reference to make your own config. 

![Neovim Preview](https://raw.githubusercontent.com/ekickx/mmm-nvimrc/master/preview.png)

<p align='center'>
<a href="#how-config-organized">How Config Organized</a>
<a href="#keybinding">Keybinding</a>
</p>

## How Config Organized

I make this config modular so it's easy to manage. Also if I don't want to use
certain plugin, I can just not load its config in plugins/init.lua and it will
not cause any problem for other plugins.

```
nvim
├── lua
│   ├── generals (dir) - appearance, built-in setting, non-plugin keybind, etc
│   └── plugins  (dir)
│       ├── init.lua      - packer.nvim's config
│       ├── _modules.lua  - config of a single plugin
│       └── modules (dir) - config of some plugins
└── init.lua
```

## Keybinding

I try to make the keybinding as mnemonic as possible.

<details>
<summary>Show</summary>

|    | Function                    | Mode  | Keybind                                                                                                                                                    |
| -- | --------------------------- | ----- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1  | Leader                      |       | <kbd>Space</kbd>                                                                                                                                           |
| 2  | Refresh Config              | N     | <kbd>F5</kbd>                                                                                                                                              |
| 3  | Move line/s                 | N/I/V | <kbd>Alt</kbd> <kbd>j</kbd>/<kbd>k</kbd>                                                                                                                   |
|    | **Buffer**                      |       |                                                                                                                                                            |
| 1  | New Buffer                  | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>N</kbd>                                                                                                                 |
| 2  | Delete Buffer               | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>d</kbd>                                                                                                                 |
| 3  | Switch to Buffer `number`<sup>th<sup> | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>`number`</kbd> or <kbd>Space</kbd> <kbd>`number`</kbd>                                                        |
| 4  | Next Buffer                 | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>n</kbd> or <kbd>Space</kbd> <kbd>l</kbd>                                                                                |
| 5  | Previous Buffer             | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>p</kbd> or <kbd>Space</kbd> <kbd>h</kbd>                                                                                |
| 6  | Previously Visited Buffer   | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>b</kbd>                                                                                                                 |
|    | **Window**                      |       |                                                                                                                                                            |
| 1  | Enter Resize Mode           | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>R</kbd>                                                                                                                 |
| 2  | Swap Window                 | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>S</kbd>                                                                                                                 |
| 3  | Close Window                | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>x</kbd>                                                                                                                 |
| 4  | Move between Window         | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> or <kbd>Ctrl</kbd> + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> |
| 5  | Split Below (Horizontal)    | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>s</kbd> or <kbd>Space</kbd> <kbd>s</kbd>                                                                                |
| 6  | Split Right (Vertical)      | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>v</kbd> or <kbd>Space</kbd> <kbd>v</kbd>                                                                                |
|    | **Plugins**                     |       |                                                                                                                                                            |
| 1  | Save with sudo              | C     | `:w!!`                                                                                                                                                     |
| 2  | Vim Commentary              | N/V   | <kbd>'</kbd>                                                                                                                                               |
| 3  | Toggle Colorizer            | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>c</kbd>                                                                                                                 |
| 4  | Toggle NerdTree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>n</kbd>                                                                                                                 |
| 5  | Toggle Undotree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>u</kbd>                                                                                                                 |
|    | **Float Terminal**              |       |                                                                                                                                                            |
| 1  | New Terminal                | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>N</kbd>                                                                                                                 |
| 2  | Toggle Terminal             | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>t</kbd>                                                                                                                 |
| 3  | Next Terminal               | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>n</kbd> or <kbd>Space</kbd> <kbd>t</kbd> <kbd>l</kbd>                                                                   |
| 4  | Previous Terminal           | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>p</kbd> or <kbd>Space</kbd> <kbd>t</kbd> <kbd>h</kbd>                                                                   |
</details>

## Plugins

### Interface

##### Nvim-base16

<details>
<summary><strong>Show</strong></summary>
</details>

##### Galaxyline

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-bufferline

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-web-devicons

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-lspinstall

<details>
<summary><strong>Show</strong></summary>
</details>

##### Lspsaga.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

### Telescope

##### Telescope.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Cheatsheet.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

### Editing Support

##### Vim-vsnip

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-compe

<details>
<summary><strong>Show</strong></summary>
</details>

##### Format.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-sandwich

<details>
<summary><strong>Show</strong></summary>
</details>

##### Hop.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Lexima.vim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-easy-align

<details>
<summary><strong>Show</strong></summary>
</details>

##### AbbrevMan.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-commentary

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-smoothie

<details>
<summary><strong>Show</strong></summary>
</details>

#### Treesitter

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-treesitter

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-ts-rainbow

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-biscuits

<details>
<summary><strong>Show</strong></summary>
</details>

##### Playground

<details>
<summary><strong>Show</strong></summary>
</details>

### Git

<details>
<summary><strong>Show</strong></summary>
</details>

##### Neogit

<details>
<summary><strong>Show</strong></summary>
</details>

##### Gitsigns

<details>
<summary><strong>Show</strong></summary>
</details>

### Other Utility

<details>
<summary><strong>Show</strong></summary>
</details>

##### Suda.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Clipboard-image

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-colorizer

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-hlslens

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-which-key

<details>
<summary><strong>Show</strong></summary>
</details>

##### Nvim-tree.lua

<details>
<summary><strong>Show</strong></summary>
</details>

##### Vim-floaterm

<details>
<summary><strong>Show</strong></summary>
</details>

### Language Support

#### Go

##### Vim-go

<details>
<summary><strong>Show</strong></summary>
</details>

#### Markdown and Notetaking

##### Mkdx

<details>
<summary><strong>Show</strong></summary>
</details>

##### Markdown-preview.nvim

<details>
<summary><strong>Show</strong></summary>
</details>

##### Goyo.vim

<details>
<summary><strong>Show</strong></summary>
</details>
