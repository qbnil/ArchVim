local notify = require("notify")
notify.setup({
    -- Animation style (see below for details)
    stages = "fade_in_slide_out",

    -- Function called when a new window is opened, use for changing win settings/config
    on_open = nil,

    -- Function called when a window is closed
    on_close = nil,

    -- Render function for notifications. See notify-render()
    render = "wrapped-compact",

    -- Default timeout for notifications
    timeout = 2000,

    -- For stages that change opacity this is treated as the highlight behind the window
    -- Set this to either a highlight group, an RGB hex value e.g. "#000000" or a function returning an RGB code for dynamic values
    background_colour = "#1c082d",

    -- Minimum width for notification windows
    minimum_width = 20,

    -- Icons for the different levels
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
vim.cmd([[
                hi NotifyINFOBorder guifg=#b58b4c
                hi NotifyINFOTitle  guifg=#cfa20e
                highlight link NotifyERRORBody Normal
                highlight link NotifyWARNBody Normal
                highlight link NotifyINFOBody Normal
                highlight link NotifyDEBUGBody Normal
                highlight link NotifyTRACEBody Normal
            ]])
vim.notify = notify
