# FtVim Starter

Starter template for [FtVim](https://github.com/FtVim/FtVim), a modern Neovim distribution for developers.

## Documentation

Full documentation available at: https://ftvim.github.io

## Quick Start

```bash
git clone https://github.com/FtVim/starter ~/.config/nvim
nvim
```

## File Structure

```
~/.config/nvim/
├── init.lua
└── lua/
    ├── config/
    │   ├── lazy.lua      # Plugin manager setup
    │   ├── options.lua   # Your custom options
    │   ├── keymaps.lua   # Your custom keymaps
    │   └── autocmds.lua  # Your custom autocmds
    └── plugins/
        └── example.lua   # Your custom plugins
```

## Links

- [FtVim Documentation](https://ftvim.github.io)
- [FtVim Repository](https://github.com/FtVim/FtVim)
