> This config is inspired by [mnabil](https://github.com/mnabila/nvimrc) and [bandithijo](https://github.com/bandithijo/nvimrc/) nvimrc

- [Preview](#preview)
- [How Config Organized](#how-config-organized)
- [Keybinding](#keybinding)
- [Question](#question)

# Preview

![Neovim Preview](https://raw.githubusercontent.com/ekickx/mmm-nvimrc/master/preview.png)

# How Config Organized

Place plugin you want to install in `init.vim`. To configure certain plugin, just create vimscript on `config/plugins/plugin-name.vim`. If you don't want to use certain plugin, you can comment the plugin (in `init.vim`) and its config (in `config/plugins/plugin-name.vim`).

```
nvim
├── config
│   ├── general.vim
│   ├── keys.vim
│   └── plugins (dir)
└── init.vim
```

# Keybinding

| Function                    | Mode  | Keybind                                                                                                                                             |
| --------------------------- | ----- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Leader                      |       | <kbd>Space</kbd>                                                                                                                                           |
| Refresh Config              | N     | <kbd>F5</kbd>                                                                                                                                              |
| **Buffer**                  |       |                                                                                                                                                            |
| New Buffer                  | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>N</kbd>                                                                                                                 |
| Delete Buffer               | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>d</kbd>                                                                                                                 |
| Switch to Buffer `number`<sup>th<sup> | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>`number`</kbd> or <kbd>Space</kbd> <kbd>`number`</kbd>                                                                  |
| Next Buffer                 | N     | <kbd>Space</kbd> <kbd>b</kbd>     <kbd>n</kbd> or <kbd>Space</kbd> <kbd>l</kbd>                                                                            |
| Previous Buffer             | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>p</kbd> or <kbd>Space</kbd> <kbd>h</kbd>                                                                                |
| Previously Visited Buffer   | N     | <kbd>Space</kbd> <kbd>b</kbd> <kbd>b</kbd>                                                                                                                 |
| **Window**                  |       |                                                                                                                                                            |
| Enter Resize Mode           | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>R</kbd>                                                                                                                 |
| Swap Window                 | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>S</kbd>                                                                                                                 |
| Close Window                | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>x</kbd>                                                                                                                 |
| Move between Window         | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> or <kbd>Ctrl</kbd> + <kbd>h</kbd>/<kbd>j</kbd>/<kbd>k</kbd>/<kbd>l</kbd> |
| Split Below (Horizontal)    | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>s</kbd> or <kbd>Space</kbd> <kbd>s</kbd>                                                                                |
| Split Right (Vertical)      | N     | <kbd>Space</kbd> <kbd>w</kbd> <kbd>v</kbd> or <kbd>Space</kbd> <kbd>v</kbd>                                                                                |
|                             |       |                                                                                                                                                            |
| Move line/s                 | N/I/V | <kbd>Alt</kbd> <kbd>j</kbd>/<kbd>k</kbd>                                                                                                                   |
| **Plugins**                 |       |                                                                                                                                                            |
| Save with sudo              | C     | `:w!!`                                                                                                                                                     |
| Vim Commentary              | N/V   | <kbd>'</kbd>                                                                                                                                               |
| Toggle Colorizer            | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>c</kbd>                                                                                                                 |
| Toggle NerdTree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>n</kbd>                                                                                                                 |
| Toggle Undotree             | N     | <kbd>Space</kbd> <kbd>q</kbd> <kbd>u</kbd>                                                                                                                 |
| Start nnn                   | N     | <kbd>Space</kbd> <kbd>n</kbd>                                                                                                                              |
| **Float Terminal**          |       |                                                                                                                                                            |
| New Terminal                | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>n</kbd>                                                                                                                 |
| Toggle Terminal             | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>t</kbd>                                                                                                                 |
| Next Terminal               | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>l</kbd>                                                                                                                 |
| Previous Terminal           | N/T   | <kbd>Space</kbd> <kbd>t</kbd> <kbd>h</kbd>                                                                                                                 |

# Question

If you have any question ask it in [here](https://github.com/ekickx/mmm-nvimrc/issues/1)
