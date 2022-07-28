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

---

You can also bind loading config to autocommands, e.g.:
```lua
local group = vim.api.nvim_create_augroup("Projector", { clear = true })
vim.api.nvim_create_autocmd({ "DirChanged", "VimEnter" }, { callback = function (bufnr)
    local i, _ = string.find(bufnr.file, "test")
    if not i then return end
    require('projector').load('test')
end, group = group })
```  
This will check if path to your file has "test" in it, and then load "test" config every time you enter nvim or change the directory
