# projector.nvim
Configurations manager for neovim

## Installation
### packer.nvim:
```lua
use 'smolovk/projector.nvim'
```

### vimplug:
```vimscript
Plug 'smolovk/projector.nvim'
```

## Usage
Exposes three commands:
    `:lua require("projector").edit("<config_name>")` - opens configuration by its name (change <config_name> to your name)
    `:lua require("projector").load("<config_name>")` - loads configuration by its name (change <config_name> to your name)
    `:lua require("projector").window()` - will be added in future commits

