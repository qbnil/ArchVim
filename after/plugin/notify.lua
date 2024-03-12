require("notify").setup({
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
    background_colour = "#000000",

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
    vim.cmd([[
                hi NotifyINFOBorder guifg=#b58b4c
                hi NotifyINFOTitle  guifg=#cfa20e
]])
})
--  local notify = require("notify")
	--  local icons = {
		--  diagnostics = require("modules.ui.icons").get("diagnostics"),
		--  ui = require("modules.ui.icons").get("ui"),
	--  }

	--  notify.setup({
		--  ---@usage Animation style one of { "fade", "slide", "fade_in_slide_out", "static" }
		--  stages = "slide",
		--  ---@usage Function called when a new window is opened, use for changing win settings/config
		--  on_open = nil,
		--  ---@usage Function called when a window is closed
		--  on_close = nil,
		--  ---@usage timeout for notifications in ms, default 5000
		--  timeout = 2000,
		--  -- Render function for notifications. See notify-render()
		--  render = "default",
		--  ---@usage highlight behind the window for stages that change opacity
		--  background_colour = "Normal",
		--  ---@usage minimum width for notification windows
		--  minimum_width = 50,
		--  ---@usage notifications with level lower than this would be ignored. [ERROR > WARN > INFO > DEBUG > TRACE]
		--  level = "TRACE",
		--  ---@usage Icons for the different levels
		--  icons = {
			--  ERROR = icons.diagnostics.Error,
			--  WARN = icons.diagnostics.Warning,
			--  INFO = icons.diagnostics.Information,
			--  DEBUG = icons.ui.Bug,
			--  TRACE = icons.ui.Pencil,
		--  },
	--  })

	--  vim.cmd([[
	            --  hi NotifyINFOIcon guifg=#6b8e23
	            --  hi NotifyINFOTitle guifg=#6b8e23
	        --  ]])
	--  vim.notify = notify
--  end

