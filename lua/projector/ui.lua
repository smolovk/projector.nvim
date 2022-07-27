local popup = require("plenary.popup")

local M = {}

local function create_window()
    local width = 100
    local height = 30
    local borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" }
    local bufnr = vim.api.nvim_create_buf(false, false)

    local Projector_win_id, win = popup.create(bufnr, {
        title = "Projector",
        highlight = "ProjectorWindow",
        line = math.floor(((vim.o.lines - height) / 2) - 1),
        col = math.floor((vim.o.columns - width) / 2),
        minwidth = width,
        minheight = height,
        borderchars = borderchars,
    })

    vim.api.nvim_win_set_option(
        win.border.win_id,
        "winhl",
        "Normal:ProjectorBorder"
    )

    return {
        bufnr = bufnr,
        win_id = Projector_win_id,
    }
end

create_window()

return M
