-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
 return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],

}

 dashboard.section.buttons.val = {
   dashboard.button("f", "📂 Find file", ":lua require('fzf-lua').files({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>"),
   dashboard.button("e", "📝 New file", ":ene <BAR> startinsert <CR>"),
   dashboard.button("r", "⌛ Recently used files", ":lua require('fzf-lua').oldfiles({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>"),
   dashboard.button("t", "🕵️ Find text", ":lua require('fzf-lua').live_grep_native({fzf_opts = {['--color'] =  'gutter:-1'}})<CR>"),
   dashboard.button("c", "⚙️  Configuration", ":e ~/.config/nvim/lua/elliot/packer.lua<CR>"),
   dashboard.button("q", "❌ Quit Neovim", ":qa!<CR>"),
}

local function footer()
 return " Just be brave, and the whole world will be at your feet..."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
