> **NOTE**: This config now only compatible for version v0.5. For lower version, see [nvim-stable branch](https://github.com/ekickx/mmm-nvimrc/tree/nvim-stable).

> This config is inspired by [mnabil](https://github.com/mnabila/nvimrc) and [bandithijo](https://github.com/bandithijo/nvimrc/) nvimrc.

> A good config is config made by yourself. This repo's intention is to share how I manage my config so you can use it as reference to make your own config. 

- [Preview](#preview)
- [How Config Organized](#how-config-organized)
- [Keybinding](#keybinding)
- [Question](#question)

# Preview

![Neovim Preview](https://raw.githubusercontent.com/ekickx/mmm-nvimrc/master/preview.png)

# How Config Organized

- `init.vim` to store plugin list
- `config` - dir for all config
  - `keys.vim` to store keybinding/keymapping config
  - `plugins` - dir for plugin's configs

If you don't want to use certain plugin, you can comment that plugin (in `init.vim`) and its config (in `config/plugins/plugin-name.vim`)

```
nvim
├── config
│   ├── general.vim
│   ├── keys.vim
│   └── plugins (dir)
└── init.vim
```

# Keybinding

| | Function                    | Mode  | Keybind                                                                                                                                             |
| --- | ------------------------ | ----- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1 | Leader                      |       | <kbd>Space</kbd>                                                                                                                                           |
| 2 | Refresh Config              | N     | <kbd>F5</kbd>                                                                                                                                              |
| 3 | **Buffer**                  |       |                                                                                                                                                            |
| 4 | New Buffer                  | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>N</kbd>                                                                                                                 |
| 5 | Delete Buffer               | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>d</kbd>                                                                                                                 |
| 6 | Switch to Buffer `number`<sup>th<sup> | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>`number`</kbd> or <kbd>Space</kbd> <kbd>`number`</kbd>                                                                  |
| 7 | Next Buffer                 | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>n</kbd> or <kbd>Space</kbd> <kbd>l</kbd>                                                                            |
| 8 | Previous Buffer             | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>p</kbd> or <kbd>Space</kbd> <kbd>h</kbd>                                                                                |
| 9 | Previously Visited Buffer   | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>b</kbd>                                                                                                                 |
| 10 | **Window**                  |       |                                                                                                                                                            |
| 11 | Enter Resize Mode           | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>R</kbd>                                                                                                                 |
| 12 | Swap Window                 | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>S</kbd>                                                                                                                 |
| 13 | Close Window                | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>x</kbd>                                                                                                                 |
| 14 | Move between Window         | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> or <kbd>Ctrl</kbd> + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> |
| 15 | Split Below (Horizontal)    | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>s</kbd> or <kbd>Space</kbd> <kbd>s</kbd>                                                                                |
| 16 | Split Right (Vertical)      | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>v</kbd> or <kbd>Space</kbd> <kbd>v</kbd>                                                                                |
| 17 |                             |       |                                                                                                                                                            |
| 18 | Move line/s                 | N/I/V | <kbd>Alt</kbd> <kbd>j</kbd>/<kbd>k</kbd>                                                                                                                   |
| 19 | **Plugins**                 |       |                                                                                                                                                            |
| 20 | Save with sudo              | C     | `:w!!`                                                                                                                                                     |
| 21 | Vim Commentary              | N/V   | <kbd>'</kbd>                                                                                                                                               |
| 22 | Toggle Colorizer            | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>c</kbd>                                                                                                                 |
| 23 | Toggle NerdTree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>n</kbd>                                                                                                                 |
| 24 | Toggle Undotree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>u</kbd>                                                                                                                 |
| 25 | Start nnn                   | N     | <kbd>Space</kbd> <kbd>n</kbd>                                                                                                                              |
| 26 | **Float Terminal**          |       |                                                                                                                                                            |
| 27 | New Terminal                | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>N</kbd>                                                                                                                 |
| 28 | Toggle Terminal             | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>t</kbd>                                                                                                                 |
| 29 | Next Terminal               | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>n</kbd> or <kbd>Space</kbd> <kbd>t</kbd> <kbd>l</kbd>                                                                                                                 |
| 30 | Previous Terminal           | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>p</kbd> or <kbd>Space</kbd> <kbd>t</kbd> <kbd>h</kbd>                                                                                                                 |

# Question

If you have any question ask it in [here](https://github.com/ekickx/mmm-nvimrc/issues/1)
