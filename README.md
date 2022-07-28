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
You can use this commands commands:  
    `:PrEdit <config_name>` - opens configuration by its name (change <config_name> to your name)  
    `:PrLoad <config_name>` - loads configuration by its name (change <config_name> to your name)  
Lua function equivalents:  
    `require("projector").edit("<config_name>")` - opens configuration by its name (change <config_name> to your name)  
    `require("projector").load("<config_name>")` - loads configuration by its name (change <config_name> to your name)

