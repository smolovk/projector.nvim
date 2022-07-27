local M = {}

local utils = require("projector.utils")

--M.configs = {"agro-web": "~/.config/nvim/lua/projector/agro-web.lua"}
M.configs_path = vim.fn.stdpath('data') .. "/projector" .. "/"

M.load = function(name)
    local filename = M.configs_path .. name .. ".lua"
    -- source in config file by name
    if (not utils.exists(filename)) then
        print("projector.nvim: Config " .. filename .. " does not exist")
        return
    end
    vim.cmd("source" .. filename)
    print("projector.nvim: Loaded projector config for " .. name)
end

M.window = function()
    print("opening projector floating window")
end

M.edit = function(name)
    local filename = M.configs_path .. name .. ".lua"
    if (not utils.exists(M.configs_path)) then
        os.execute("mkdir " .. M.configs_path)
    end
    --open a buffer for a config file by name
    vim.cmd("edit" .. filename)
    print("projector.nvim: Opened config for " .. filename)
end

return M
