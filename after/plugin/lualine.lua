local colors = {
    bg       = '#202328',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#98be65',
    orange   = '#FF8800',
    violet   = '#a9a1e1',
    magenta  = '#c678dd',
    blue     = '#51afef',
    red      = '#ec5f67',
}
local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}
require('lualine').setup {
    options = {
        icons_enabled = true,
        --  theme = {
            --  normal = { c = { fg = colors.fg, bg = colors.bg } },
            --  inactive = { c = { fg = colors.fg, bg = colors.bg } },
        --  },
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            {'branch'},
            {
                'diff',
                colored = true,
                diff_color = {
                    added = { fg = colors.green },
                    modified = { fg = colors.orange },
                    removed = { fg = colors.red },
                },
                symbols = {added = ' ', modified = '󰝤 ', removed = ' '},
            },
            {'diagnostics'},
            --  {'filename',
                --  cond = conditions.buffer_not_empty,
                --  file_status = true,      -- Displays file status (readonly status, modified status)
                --  newfile_status = false,  -- Display new file status (new file means no write after created)
                --  path = 4,                -- 0: Just the filename
                -- 1: Relative path
                -- 2: Absolute path
                -- 3: Absolute path, with tilde as the home directory
                -- 4: Filename and parent dir, with tilde as the home directory

                --  shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
                --  -- for other components. (terrible name, any suggestions?)
                --  symbols = {
                    --  modified = '[+]',      -- Text to show when the file is modified.
                    --  readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
                    --  unnamed = '[No Name]', -- Text to show for unnamed buffers.
                    --  newfile = '[New]',     -- Text to show for newly created file before first write
                --  },
            --  },
            {'fileformat'}
        },
        lualine_c = {''},
        lualine_x = {
            function()
                local ok, pomo = pcall(require, "pomo")
                if not ok then
                    return ""
                end
                local timer = pomo.get_first_to_finish() if timer == nil then
                    return ""
                end

                return "󰄉 " .. tostring(timer)
            end,
            "filetype",
        },
        lualine_y = {
            function()
                local msg = 'No Active Lsp'
                local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
                local clients = vim.lsp.get_active_clients()
                if next(clients) == nil then
                    return msg
                end
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return client.name
                    end
                end
                return msg
            end,
        },
        lualine_z = {
            "filesize",
            "progress",
            "location",
        },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
