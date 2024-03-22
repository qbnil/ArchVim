--  require("rose-pine").setup({
    --  variant = "main", -- auto, main, moon, or dawn
    --  dark_variant = "main", -- main, moon, or dawn
    --  dim_inactive_windows = false,
    --  extend_background_behind_borders = true,

    --  enable = {
        --  terminal = true,
        --  legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
        --  migrations = true, -- Handle deprecated options automatically
    --  },
    --  styles = {
        --  bold = true,
        --  italic = true,
        --  transparency = true,
    --  },

    --  --  groups = {
        --  --  border = "muted",
        --  --  link = "iris",
        --  --  panel = "surface",

        --  --  error = "love",
        --  --  hint = "iris",
        --  --  info = "foam",
        --  --  note = "pine",
        --  --  todo = "rose",
        --  --  warn = "gold",

        --  --  git_add = "foam",
        --  --  git_change = "rose",
        --  --  git_delete = "love",
        --  --  git_dirty = "rose",
        --  --  git_ignore = "muted",
        --  --  git_merge = "iris",
        --  --  git_rename = "pine",
        --  --  git_stage = "iris",
        --  --  git_text = "rose",
        --  --  git_untracked = "subtle",

        --  --  h1 = "iris",
        --  --  h2 = "foam",
        --  --  h3 = "rose",
        --  --  h4 = "gold",
        --  --  h5 = "pine",
        --  --  h6 = "foam",
    --  --  },

    --  highlight_groups = {
        --  --  -- Comment = { fg = "foam" },
        --  --  -- VertSplit = { fg = "muted", bg = "muted" },
        --  --  --  TelescopeBorder = { fg = "highlight_high", bg = "none" },
		--  --  --  TelescopeNormal = { bg = "none" },
		--  --  --  TelescopePromptNormal = { bg = "base" },
		--  --  --  TelescopeResultsNormal = { fg = "subtle", bg = "none" },
		--  --  --  TelescopeSelection = { fg = "text", bg = "base" },
		--  --  --  TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        --  Boolean = { fg = '#ffb8f1' },
        --  ["@function.builtin"] = { fg = "#772dbc" },
        --  --  --  ["@constant.builtin"] = { fg = "rose"},
        --  String = { fg = '#c2a16b'},
        --  --  ["@property"] = { fg = "love", italic = italic },
        --  ["@variable"] = { fg = '#548a7a' },
        --  ["@function"] = { fg = 'love' },
		--  ["@variable.member"] = { fg = '#548a7a'},
        --  --  ["@function.method"] = { fg = 'love' },
        --  Function = { fg = '' },
    --  },

    --  --  before_highlight = function(group, highlight, palette)
        --  --  -- Disable all undercurls
        --  --  if highlight.undercurl then
            --  --  highlight.undercurl = false
        --  --  end
        --  --  --
        --  --  -- Change palette colour
        --  --  if highlight.fg == palette.pine then
            --  --  highlight.fg = palette.pine
        --  --  end
    --  --  end,
--  })
--  --  --  vim.api.nvim_set_hl(0, '@lsp.type.function', {})


--  vim.cmd("colorscheme rose-pine")
--  --  -- vim.cmd("colorscheme rose-pine-main")
--  --  -- vim.cmd("colorscheme rose-pine-moon")
--  --  -- vim.cmd("colorscheme rose-pine-dawn")
