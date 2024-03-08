require('pomo').setup({
    -- How often the notifiers are updated.
    update_interval = 1000,

    -- Configure the default notifiers to use for each timer.
    -- You can also configure different notifiers for timers given specific names, see
    -- the 'timers' field below.
    notifiers = {
        -- The "Default" notifier uses 'vim.notify' and works best when you have 'nvim-notify' installed.
        {
            name = "Default",
            opts = {
                -- With 'nvim-notify', when 'sticky = true' you'll have a live timer pop-up
                -- continuously displayed. If you only want a pop-up notification when the timer starts
                -- and finishes, set this to false.
                sticky = true,

                -- Configure the display icons:
                title_icon = "󱎫",
                text_icon = "󰄉",
                -- Replace the above with these if you don't have a patched font:
                -- title_icon = "⏳",
                -- text_icon = "⏱️",
            },
        },

        -- You can also define custom notifiers by providing an "init" function instead of a name.
        -- See "Defining custom notifiers" below for an example 👇
        -- { init = function(timer) ... end }
    },

    -- Override the notifiers for specific timer names.
    timers = {
        -- For example, use only the "System" notifier when you create a timer called "Break",
        -- e.g. ':TimerStart 2m Break'.
        Break = {
            { name = "System" },
        },
    },
})
